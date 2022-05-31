import 'package:flutter_base/data/model/api_response_collection.dart';
import 'package:flutter_base/data/model/market.dart';
import 'package:flutter_base/data/model/result.dart';
import 'package:flutter_base/data/remote/api_helper.dart';
import 'package:flutter_base/data/remote/api_service_end_point.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appApiHelperProvider = Provider((ref) => AppApiHelper(ref.read));

class AppApiHelper extends ApiHelper {
  AppApiHelper(this._reader);

  final Reader _reader;

  late final ApiServiceEndPoint serviceEndPoint =
      _reader(apiServiceEndPointProvider);

  @override
  Future<Result<ApiResponseCollection<Markets>>> getListMarket() {
    return Result.guardFuture(
        () async => await serviceEndPoint.getListMarket());
  }
}
