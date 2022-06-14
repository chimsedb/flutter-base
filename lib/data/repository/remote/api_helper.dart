import 'package:flutter_base/data/model/movie.dart';
import 'package:flutter_base/data/model/result.dart';
import 'package:flutter_base/data/model/season.dart';

abstract class ApiHelper {
  Future<Result<Season>> getMangaSeason(String playlistID, String profileID);

  Future<Result<Movie>> getMovie(String slug, String id);
}
