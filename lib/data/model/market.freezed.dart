// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'market.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Market _$MarketFromJson(Map<String, dynamic> json) {
  return _Market.fromJson(json);
}

/// @nodoc
mixin _$Market {
  int get id => throw _privateConstructorUsedError;
  String get exchange => throw _privateConstructorUsedError;
  String get pair => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  String get route => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketCopyWith<Market> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketCopyWith<$Res> {
  factory $MarketCopyWith(Market value, $Res Function(Market) then) =
      _$MarketCopyWithImpl<$Res>;
  $Res call({int id, String exchange, String pair, bool active, String route});
}

/// @nodoc
class _$MarketCopyWithImpl<$Res> implements $MarketCopyWith<$Res> {
  _$MarketCopyWithImpl(this._value, this._then);

  final Market _value;
  // ignore: unused_field
  final $Res Function(Market) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? exchange = freezed,
    Object? pair = freezed,
    Object? active = freezed,
    Object? route = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      exchange: exchange == freezed
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      pair: pair == freezed
          ? _value.pair
          : pair // ignore: cast_nullable_to_non_nullable
              as String,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MarketCopyWith<$Res> implements $MarketCopyWith<$Res> {
  factory _$$_MarketCopyWith(_$_Market value, $Res Function(_$_Market) then) =
      __$$_MarketCopyWithImpl<$Res>;
  @override
  $Res call({int id, String exchange, String pair, bool active, String route});
}

/// @nodoc
class __$$_MarketCopyWithImpl<$Res> extends _$MarketCopyWithImpl<$Res>
    implements _$$_MarketCopyWith<$Res> {
  __$$_MarketCopyWithImpl(_$_Market _value, $Res Function(_$_Market) _then)
      : super(_value, (v) => _then(v as _$_Market));

  @override
  _$_Market get _value => super._value as _$_Market;

  @override
  $Res call({
    Object? id = freezed,
    Object? exchange = freezed,
    Object? pair = freezed,
    Object? active = freezed,
    Object? route = freezed,
  }) {
    return _then(_$_Market(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      exchange: exchange == freezed
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      pair: pair == freezed
          ? _value.pair
          : pair // ignore: cast_nullable_to_non_nullable
              as String,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Market with DiagnosticableTreeMixin implements _Market {
  const _$_Market(
      {required this.id,
      required this.exchange,
      required this.pair,
      required this.active,
      required this.route});

  factory _$_Market.fromJson(Map<String, dynamic> json) =>
      _$$_MarketFromJson(json);

  @override
  final int id;
  @override
  final String exchange;
  @override
  final String pair;
  @override
  final bool active;
  @override
  final String route;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Market(id: $id, exchange: $exchange, pair: $pair, active: $active, route: $route)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Market'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('exchange', exchange))
      ..add(DiagnosticsProperty('pair', pair))
      ..add(DiagnosticsProperty('active', active))
      ..add(DiagnosticsProperty('route', route));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Market &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.exchange, exchange) &&
            const DeepCollectionEquality().equals(other.pair, pair) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.route, route));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(exchange),
      const DeepCollectionEquality().hash(pair),
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(route));

  @JsonKey(ignore: true)
  @override
  _$$_MarketCopyWith<_$_Market> get copyWith =>
      __$$_MarketCopyWithImpl<_$_Market>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarketToJson(this);
  }
}

abstract class _Market implements Market {
  const factory _Market(
      {required final int id,
      required final String exchange,
      required final String pair,
      required final bool active,
      required final String route}) = _$_Market;

  factory _Market.fromJson(Map<String, dynamic> json) = _$_Market.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get exchange => throw _privateConstructorUsedError;
  @override
  String get pair => throw _privateConstructorUsedError;
  @override
  bool get active => throw _privateConstructorUsedError;
  @override
  String get route => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MarketCopyWith<_$_Market> get copyWith =>
      throw _privateConstructorUsedError;
}

Markets _$MarketsFromJson(Map<String, dynamic> json) {
  return _Markets.fromJson(json);
}

/// @nodoc
mixin _$Markets {
  List<Market> get markets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketsCopyWith<Markets> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketsCopyWith<$Res> {
  factory $MarketsCopyWith(Markets value, $Res Function(Markets) then) =
      _$MarketsCopyWithImpl<$Res>;
  $Res call({List<Market> markets});
}

/// @nodoc
class _$MarketsCopyWithImpl<$Res> implements $MarketsCopyWith<$Res> {
  _$MarketsCopyWithImpl(this._value, this._then);

  final Markets _value;
  // ignore: unused_field
  final $Res Function(Markets) _then;

  @override
  $Res call({
    Object? markets = freezed,
  }) {
    return _then(_value.copyWith(
      markets: markets == freezed
          ? _value.markets
          : markets // ignore: cast_nullable_to_non_nullable
              as List<Market>,
    ));
  }
}

/// @nodoc
abstract class _$$_MarketsCopyWith<$Res> implements $MarketsCopyWith<$Res> {
  factory _$$_MarketsCopyWith(
          _$_Markets value, $Res Function(_$_Markets) then) =
      __$$_MarketsCopyWithImpl<$Res>;
  @override
  $Res call({List<Market> markets});
}

/// @nodoc
class __$$_MarketsCopyWithImpl<$Res> extends _$MarketsCopyWithImpl<$Res>
    implements _$$_MarketsCopyWith<$Res> {
  __$$_MarketsCopyWithImpl(_$_Markets _value, $Res Function(_$_Markets) _then)
      : super(_value, (v) => _then(v as _$_Markets));

  @override
  _$_Markets get _value => super._value as _$_Markets;

  @override
  $Res call({
    Object? markets = freezed,
  }) {
    return _then(_$_Markets(
      markets: markets == freezed
          ? _value._markets
          : markets // ignore: cast_nullable_to_non_nullable
              as List<Market>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Markets with DiagnosticableTreeMixin implements _Markets {
  const _$_Markets({required final List<Market> markets}) : _markets = markets;

  factory _$_Markets.fromJson(Map<String, dynamic> json) =>
      _$$_MarketsFromJson(json);

  final List<Market> _markets;
  @override
  List<Market> get markets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markets);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Markets(markets: $markets)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Markets'))
      ..add(DiagnosticsProperty('markets', markets));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Markets &&
            const DeepCollectionEquality().equals(other._markets, _markets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_markets));

  @JsonKey(ignore: true)
  @override
  _$$_MarketsCopyWith<_$_Markets> get copyWith =>
      __$$_MarketsCopyWithImpl<_$_Markets>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarketsToJson(this);
  }
}

abstract class _Markets implements Markets {
  const factory _Markets({required final List<Market> markets}) = _$_Markets;

  factory _Markets.fromJson(Map<String, dynamic> json) = _$_Markets.fromJson;

  @override
  List<Market> get markets => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MarketsCopyWith<_$_Markets> get copyWith =>
      throw _privateConstructorUsedError;
}
