import 'package:flutter_base/data/di/repository_provider.dart';
import 'package:flutter_base/data/di/view_model_provider.dart';
import 'package:flutter_base/data/model/manga.dart';
import 'package:flutter_base/data/model/result.dart';
import 'package:flutter_base/data/model/season.dart';
import 'package:flutter_base/data/repository/remote/app_api_helper.dart';
import 'package:flutter_base/ui/chapter_category/chapter_category_view_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../data/repository/remote/app_api_helper_test.mocks.dart';
import 'chapter_category_view_model_test.mocks.dart';

@GenerateMocks([Manga, Season])
main() {
  late final ChapterCategoryViewModel viewModel;
  late final AppApiHelper appApiHelper;
  setUp(() {
    appApiHelper = MockAppApiHelper();
    ProviderContainer container = ProviderContainer(
        overrides: [appApiHelperProvider.overrideWithValue(appApiHelper)]);
    viewModel = container.read(chapterViewModelProvider);
  });

  test('fetchMangaSeason successful', () async {
    expect(viewModel.seasons.isEmpty, true);
    when(appApiHelper.getMangaSeason("playlistID", "profileID"))
        .thenAnswer((_) async => Result.success(data: MockSeason()));
    await viewModel.fetchMangaSeason("playlistID", "profileID");
    expect(viewModel.seasons.isNotEmpty, true);
  });

  test('fetchMangaSeason failure', () async {
    expect(viewModel.seasons.isEmpty, true);
    when(appApiHelper.getMangaSeason("playlistID", "profileID"))
        .thenAnswer((_) async => Result.failure(error: MockAppError()));
    await viewModel.fetchMangaSeason("playlistID", "profileID");
    expect(viewModel.seasons.isEmpty, true);
  });
}
