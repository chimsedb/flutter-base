import 'package:dio/dio.dart';
import 'package:flutter_base/app_config.dart';
import 'package:flutter_base/data/di/repository_provider.dart';
import 'package:flutter_base/data/model/movie.dart';
import 'package:flutter_base/data/model/season.dart';
import 'package:flutter_base/data/repository/remote/api_end_point.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service_end_point.g.dart';

@RestApi()
abstract class ApiServiceEndPoint {
  factory ApiServiceEndPoint(Reader reader) =>
      _ApiServiceEndPoint(reader(dioProvider));

  @GET(GET_MANGA_SEASON)
  Future<Season> getMangaSeason(@Path('playlistID') String playlistID,
      @Path('profileID') String profileID);
}

@RestApi()
abstract class ApiServiceEndPointMovie {
  factory ApiServiceEndPointMovie(Reader reader) =>
      _ApiServiceEndPointMovie(reader(dioProvider),
          baseUrl: AppConfig.instance.baseUrlMovie);

  @GET(GET_MOVIE)
  Future<Movie> getMovie(@Path('slug') String slug, @Path('id') String id);
}
