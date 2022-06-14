import 'package:auto_route/auto_route.dart';
import 'package:flutter_base/ui/chapter_category/chapter_category_view.dart';
import 'package:flutter_base/ui/detail_chapter/deltail_chapter_view.dart';
import 'package:flutter_base/ui/home/home_view.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeView, initial: true),
    CustomRoute(
        page: ChapterCategoryView,
        transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(
        page: DetailChapterView,
        transitionsBuilder: TransitionsBuilders.fadeIn),
  ],
)
class $AppRouter {}
