// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/cupertino.dart' as _i7;
import 'package:flutter/material.dart' as _i5;
import 'package:flutter_base/data/model/manga.dart' as _i6;
import 'package:flutter_base/ui/chapter_category/chapter_category_view.dart'
    as _i2;
import 'package:flutter_base/ui/detail_chapter/deltail_chapter_view.dart'
    as _i3;
import 'package:flutter_base/ui/home/home_view.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.HomeView());
    },
    ChapterCategoryRoute.name: (routeData) {
      final args = routeData.argsAs<ChapterCategoryRouteArgs>();
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: _i2.ChapterCategoryView(manga: args.manga, key: args.key),
          transitionsBuilder: _i4.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    DetailChapterRoute.name: (routeData) {
      final args = routeData.argsAs<DetailChapterRouteArgs>();
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: _i3.DetailChapterView(
              slug: args.slug, id: args.id, key: args.key),
          transitionsBuilder: _i4.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(HomeRoute.name, path: '/'),
        _i4.RouteConfig(ChapterCategoryRoute.name,
            path: '/chapter-category-view'),
        _i4.RouteConfig(DetailChapterRoute.name, path: '/detail-chapter-view')
      ];
}

/// generated route for
/// [_i1.HomeView]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.ChapterCategoryView]
class ChapterCategoryRoute extends _i4.PageRouteInfo<ChapterCategoryRouteArgs> {
  ChapterCategoryRoute({required _i6.Manga manga, _i7.Key? key})
      : super(ChapterCategoryRoute.name,
            path: '/chapter-category-view',
            args: ChapterCategoryRouteArgs(manga: manga, key: key));

  static const String name = 'ChapterCategoryRoute';
}

class ChapterCategoryRouteArgs {
  const ChapterCategoryRouteArgs({required this.manga, this.key});

  final _i6.Manga manga;

  final _i7.Key? key;

  @override
  String toString() {
    return 'ChapterCategoryRouteArgs{manga: $manga, key: $key}';
  }
}

/// generated route for
/// [_i3.DetailChapterView]
class DetailChapterRoute extends _i4.PageRouteInfo<DetailChapterRouteArgs> {
  DetailChapterRoute({required String slug, required String id, _i7.Key? key})
      : super(DetailChapterRoute.name,
            path: '/detail-chapter-view',
            args: DetailChapterRouteArgs(slug: slug, id: id, key: key));

  static const String name = 'DetailChapterRoute';
}

class DetailChapterRouteArgs {
  const DetailChapterRouteArgs(
      {required this.slug, required this.id, this.key});

  final String slug;

  final String id;

  final _i7.Key? key;

  @override
  String toString() {
    return 'DetailChapterRouteArgs{slug: $slug, id: $id, key: $key}';
  }
}
