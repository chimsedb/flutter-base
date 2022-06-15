import 'dart:io';

import 'package:flutter_base/data/app_error.dart';
import 'package:flutter_base/data/model/result.dart';
import 'package:flutter_base/data/model/season.dart';
import 'package:flutter_base/data/repository/remote/app_api_helper.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'app_api_helper_test.mocks.dart';

@GenerateMocks([AppApiHelper, AppError])
Future<void> main() async {
  late MockAppApiHelper apiHelper;

  setUp(() {
    dotenv.testLoad(fileInput: File('test/.env').readAsStringSync());
    apiHelper = MockAppApiHelper();
  });

  group('getMangaSeason', () {
    final Map<String, dynamic> tResponse = {
      "title": "vxcvcx",
      "data": [
        {
          "id": "hgfhf",
          "title": "dasda",
          "slug": "eqweqw",
          "categories": [
            {"id": "45345"}
          ],
          "thumbnails": {
            "medium": {"url": "zxc"}
          }
        }
      ]
    };

    test('return result is a season if http call completes successfully',
        () async {
      when(apiHelper.getMangaSeason("playlistID", "profileID")).thenAnswer(
          (_) async =>
              Result<Season>.success(data: Season.fromJson(tResponse)));

      final result = await apiHelper.getMangaSeason("playlistID", "profileID");
      expect(result.isSuccess, true);
      expect(result.dataOrThrow, Season.fromJson(tResponse));
    });

    test('return result is a season if http call completes failure', () async {
      final MockAppError appError = MockAppError();
      when(apiHelper.getMangaSeason("playlistID", "profileID")).thenAnswer(
          (_) async => Result<Season>.failure(error: appError));

      final result = await apiHelper.getMangaSeason("playlistID", "profileID");
      expect(result.isFailure, true);
      expect(result,Result<Season>.failure(error: appError));
    });
  });
}
