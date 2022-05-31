// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Market _$$_MarketFromJson(Map<String, dynamic> json) => _$_Market(
      id: json['id'] as int,
      exchange: json['exchange'] as String,
      pair: json['pair'] as String,
      active: json['active'] as bool,
      route: json['route'] as String,
    );

Map<String, dynamic> _$$_MarketToJson(_$_Market instance) => <String, dynamic>{
      'id': instance.id,
      'exchange': instance.exchange,
      'pair': instance.pair,
      'active': instance.active,
      'route': instance.route,
    };

_$_Markets _$$_MarketsFromJson(Map<String, dynamic> json) => _$_Markets(
      markets: (json['markets'] as List<dynamic>)
          .map((e) => Market.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MarketsToJson(_$_Markets instance) =>
    <String, dynamic>{
      'markets': instance.markets,
    };
