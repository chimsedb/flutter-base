// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'season.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Season _$SeasonFromJson(Map<String, dynamic> json) {
  return _Season.fromJson(json);
}

/// @nodoc
mixin _$Season {
  String get title => throw _privateConstructorUsedError;
  List<Data> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeasonCopyWith<Season> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonCopyWith<$Res> {
  factory $SeasonCopyWith(Season value, $Res Function(Season) then) =
      _$SeasonCopyWithImpl<$Res>;
  $Res call({String title, List<Data> data});
}

/// @nodoc
class _$SeasonCopyWithImpl<$Res> implements $SeasonCopyWith<$Res> {
  _$SeasonCopyWithImpl(this._value, this._then);

  final Season _value;
  // ignore: unused_field
  final $Res Function(Season) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>,
    ));
  }
}

/// @nodoc
abstract class _$$_SeasonCopyWith<$Res> implements $SeasonCopyWith<$Res> {
  factory _$$_SeasonCopyWith(_$_Season value, $Res Function(_$_Season) then) =
      __$$_SeasonCopyWithImpl<$Res>;
  @override
  $Res call({String title, List<Data> data});
}

/// @nodoc
class __$$_SeasonCopyWithImpl<$Res> extends _$SeasonCopyWithImpl<$Res>
    implements _$$_SeasonCopyWith<$Res> {
  __$$_SeasonCopyWithImpl(_$_Season _value, $Res Function(_$_Season) _then)
      : super(_value, (v) => _then(v as _$_Season));

  @override
  _$_Season get _value => super._value as _$_Season;

  @override
  $Res call({
    Object? title = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_Season(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Season implements _Season {
  const _$_Season({required this.title, required final List<Data> data})
      : _data = data;

  factory _$_Season.fromJson(Map<String, dynamic> json) =>
      _$$_SeasonFromJson(json);

  @override
  final String title;
  final List<Data> _data;
  @override
  List<Data> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'Season(title: $title, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Season &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_SeasonCopyWith<_$_Season> get copyWith =>
      __$$_SeasonCopyWithImpl<_$_Season>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeasonToJson(this);
  }
}

abstract class _Season implements Season {
  const factory _Season(
      {required final String title,
      required final List<Data> data}) = _$_Season;

  factory _Season.fromJson(Map<String, dynamic> json) = _$_Season.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  List<Data> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SeasonCopyWith<_$_Season> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  List<Chapter> get categories => throw _privateConstructorUsedError;
  Thumbnail get thumbnails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String slug,
      List<Chapter> categories,
      Thumbnail thumbnails});

  $ThumbnailCopyWith<$Res> get thumbnails;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? categories = freezed,
    Object? thumbnails = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Chapter>,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as Thumbnail,
    ));
  }

  @override
  $ThumbnailCopyWith<$Res> get thumbnails {
    return $ThumbnailCopyWith<$Res>(_value.thumbnails, (value) {
      return _then(_value.copyWith(thumbnails: value));
    });
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String slug,
      List<Chapter> categories,
      Thumbnail thumbnails});

  @override
  $ThumbnailCopyWith<$Res> get thumbnails;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, (v) => _then(v as _$_Data));

  @override
  _$_Data get _value => super._value as _$_Data;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? categories = freezed,
    Object? thumbnails = freezed,
  }) {
    return _then(_$_Data(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Chapter>,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as Thumbnail,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {required this.id,
      required this.title,
      required this.slug,
      required final List<Chapter> categories,
      required this.thumbnails})
      : _categories = categories;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String slug;
  final List<Chapter> _categories;
  @override
  List<Chapter> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final Thumbnail thumbnails;

  @override
  String toString() {
    return 'Data(id: $id, title: $title, slug: $slug, categories: $categories, thumbnails: $thumbnails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.slug, slug) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other.thumbnails, thumbnails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(slug),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(thumbnails));

  @JsonKey(ignore: true)
  @override
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required final String id,
      required final String title,
      required final String slug,
      required final List<Chapter> categories,
      required final Thumbnail thumbnails}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get slug => throw _privateConstructorUsedError;
  @override
  List<Chapter> get categories => throw _privateConstructorUsedError;
  @override
  Thumbnail get thumbnails => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

Chapter _$ChapterFromJson(Map<String, dynamic> json) {
  return _Chapter.fromJson(json);
}

/// @nodoc
mixin _$Chapter {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChapterCopyWith<Chapter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterCopyWith<$Res> {
  factory $ChapterCopyWith(Chapter value, $Res Function(Chapter) then) =
      _$ChapterCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$ChapterCopyWithImpl<$Res> implements $ChapterCopyWith<$Res> {
  _$ChapterCopyWithImpl(this._value, this._then);

  final Chapter _value;
  // ignore: unused_field
  final $Res Function(Chapter) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ChapterCopyWith<$Res> implements $ChapterCopyWith<$Res> {
  factory _$$_ChapterCopyWith(
          _$_Chapter value, $Res Function(_$_Chapter) then) =
      __$$_ChapterCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$$_ChapterCopyWithImpl<$Res> extends _$ChapterCopyWithImpl<$Res>
    implements _$$_ChapterCopyWith<$Res> {
  __$$_ChapterCopyWithImpl(_$_Chapter _value, $Res Function(_$_Chapter) _then)
      : super(_value, (v) => _then(v as _$_Chapter));

  @override
  _$_Chapter get _value => super._value as _$_Chapter;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_Chapter(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Chapter implements _Chapter {
  const _$_Chapter({required this.id});

  factory _$_Chapter.fromJson(Map<String, dynamic> json) =>
      _$$_ChapterFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'Chapter(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Chapter &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_ChapterCopyWith<_$_Chapter> get copyWith =>
      __$$_ChapterCopyWithImpl<_$_Chapter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChapterToJson(this);
  }
}

abstract class _Chapter implements Chapter {
  const factory _Chapter({required final String id}) = _$_Chapter;

  factory _Chapter.fromJson(Map<String, dynamic> json) = _$_Chapter.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ChapterCopyWith<_$_Chapter> get copyWith =>
      throw _privateConstructorUsedError;
}

Thumbnail _$ThumbnailFromJson(Map<String, dynamic> json) {
  return _Thumbnail.fromJson(json);
}

/// @nodoc
mixin _$Thumbnail {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThumbnailCopyWith<Thumbnail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailCopyWith<$Res> {
  factory $ThumbnailCopyWith(Thumbnail value, $Res Function(Thumbnail) then) =
      _$ThumbnailCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$ThumbnailCopyWithImpl<$Res> implements $ThumbnailCopyWith<$Res> {
  _$ThumbnailCopyWithImpl(this._value, this._then);

  final Thumbnail _value;
  // ignore: unused_field
  final $Res Function(Thumbnail) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ThumbnailCopyWith<$Res> implements $ThumbnailCopyWith<$Res> {
  factory _$$_ThumbnailCopyWith(
          _$_Thumbnail value, $Res Function(_$_Thumbnail) then) =
      __$$_ThumbnailCopyWithImpl<$Res>;
  @override
  $Res call({String url});
}

/// @nodoc
class __$$_ThumbnailCopyWithImpl<$Res> extends _$ThumbnailCopyWithImpl<$Res>
    implements _$$_ThumbnailCopyWith<$Res> {
  __$$_ThumbnailCopyWithImpl(
      _$_Thumbnail _value, $Res Function(_$_Thumbnail) _then)
      : super(_value, (v) => _then(v as _$_Thumbnail));

  @override
  _$_Thumbnail get _value => super._value as _$_Thumbnail;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$_Thumbnail(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Thumbnail implements _Thumbnail {
  const _$_Thumbnail({required this.url});

  factory _$_Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$$_ThumbnailFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'Thumbnail(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Thumbnail &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_ThumbnailCopyWith<_$_Thumbnail> get copyWith =>
      __$$_ThumbnailCopyWithImpl<_$_Thumbnail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ThumbnailToJson(this);
  }
}

abstract class _Thumbnail implements Thumbnail {
  const factory _Thumbnail({required final String url}) = _$_Thumbnail;

  factory _Thumbnail.fromJson(Map<String, dynamic> json) =
      _$_Thumbnail.fromJson;

  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ThumbnailCopyWith<_$_Thumbnail> get copyWith =>
      throw _privateConstructorUsedError;
}
