// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wind.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Wind _$WindFromJson(Map<String, dynamic> json) => _Wind(
  speed: (json['speed'] as num).toDouble(),
  deg: (json['deg'] as num).toInt(),
  gust: (json['gust'] as num).toDouble(),
);

Map<String, dynamic> _$WindToJson(_Wind instance) => <String, dynamic>{
  'speed': instance.speed,
  'deg': instance.deg,
  'gust': instance.gust,
};
