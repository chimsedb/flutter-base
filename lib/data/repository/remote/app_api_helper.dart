import 'package:flutter_base/data/di/repository_provider.dart';
import 'package:flutter_base/data/model/movie.dart';
import 'package:flutter_base/data/model/result.dart';
import 'package:flutter_base/data/model/season.dart';
import 'package:flutter_base/data/repository/remote/api_helper.dart';
import 'package:flutter_base/data/repository/remote/api_service_end_point.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppApiHelper extends ApiHelper {
  AppApiHelper(this._reader);

  final Reader _reader;

  late final ApiServiceEndPoint serviceEndPoint =
      _reader(apiServiceEndPointProvider);

  late final ApiServiceEndPointMovie serviceEndPointMovie =
      _reader(apiServiceEndPointMovieProvider);

  @override
  Future<Result<Season>> getMangaSeason(String playlistID, String profileID) {
    return Result.guardFuture(() async =>
        await serviceEndPoint.getMangaSeason(playlistID, profileID));
  }

  @override
  Future<Result<Movie>> getMovie(String slug,String id) {
    return Result.guardFuture(
        () async => await serviceEndPointMovie.getMovie(slug,id));
  }
}
