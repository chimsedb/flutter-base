import 'package:freezed_annotation/freezed_annotation.dart';

part 'season.freezed.dart';

part 'season.g.dart';

@freezed
class Season with _$Season {
  const factory Season({
    required String title,
    required List<Data> data,
  }) = _Season;

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required String id,
    required String title,
    required String slug,
    required List<Chapter> categories,
    required Thumbnail thumbnails,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Chapter with _$Chapter {
  const factory Chapter({
    required String id,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
}

@freezed
class Thumbnail with _$Thumbnail {
  const factory Thumbnail({
    required String url,
  }) = _Thumbnail;

  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json['medium']);

}

