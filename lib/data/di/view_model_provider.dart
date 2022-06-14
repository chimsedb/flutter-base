import 'package:flutter_base/ui/chapter_category/chapter_category_view_model.dart';
import 'package:flutter_base/ui/detail_chapter/deltail_chapter_view_model.dart';
import 'package:flutter_base/ui/home/home_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeViewModelProvider =
    ChangeNotifierProvider<HomeViewModel>((ref) => HomeViewModel(ref.read));

final chapterViewModelProvider =
    ChangeNotifierProvider<ChapterCategoryViewModel>(
        (ref) => ChapterCategoryViewModel(ref.read));

final detailViewModelProvider = ChangeNotifierProvider<DetailChapterViewModel>(
    (ref) => DetailChapterViewModel(ref.read));
