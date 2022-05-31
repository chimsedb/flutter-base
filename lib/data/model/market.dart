// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'market.freezed.dart';

part 'market.g.dart';

@freezed
class Market with _$Market {
  factory Market.fromJson(Map<String, dynamic> json) => _$MarketFromJson(json);

  const factory Market(
      {required int id,
      required String exchange,
      required String pair,
      required bool active,
      required String route}) = _Market;
}

@freezed
class Markets with _$Markets {
  const factory Markets({required List<Market> markets}) = _Markets;

  factory Markets.fromJson(Map<String, dynamic> json) =>
      _$MarketsFromJson(json);
}