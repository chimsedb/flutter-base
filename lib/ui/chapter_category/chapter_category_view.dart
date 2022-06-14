import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_base/data/di/view_model_provider.dart';
import 'package:flutter_base/data/model/manga.dart';
import 'package:flutter_base/ui/base/base_view.dart';
import 'package:flutter_base/ui/chapter_category/chapter_category_view_model.dart';
import 'package:flutter_base/ui/chapter_category/chapter_item.dart';
import 'package:flutter_base/ui/hook/use_localizations.dart';
import 'package:flutter_riverpod/src/change_notifier_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChapterCategoryView extends BaseView<ChapterCategoryViewModel> {
  final Manga manga;

  const ChapterCategoryView({required this.manga, Key? key}) : super(key: key);

  @override
  Widget createView() {
    return const Body();
  }

  @override
  Future<void> initState(ChapterCategoryViewModel viewModel) async {
    await viewModel.getListChapter(manga);
  }

  @override
  ChangeNotifierProvider<ChapterCategoryViewModel> get viewModelProvider =>
      chapterViewModelProvider;
}

class Body extends HookConsumerWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = useLocalizations();

    final ChapterCategoryViewModel viewModel =
        ref.watch(chapterViewModelProvider);
    return viewModel.isError
        ? Center(
            child: Text(l10n.error),
          )
        : ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: viewModel.seasons.length,
            itemBuilder: (context, index) =>
                ChapterItem(season: viewModel.seasons[index]),
          );
  }
}
