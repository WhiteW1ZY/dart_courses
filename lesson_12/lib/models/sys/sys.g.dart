// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sys.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Sys _$SysFromJson(Map<String, dynamic> json) => _Sys(
  country: json['country'] as String,
  sunrise: (json['sunrise'] as num).toInt(),
  sunset: (json['sunset'] as num).toInt(),
);

Map<String, dynamic> _$SysToJson(_Sys instance) => <String, dynamic>{
  'country': instance.country,
  'sunrise': instance.sunrise,
  'sunset': instance.sunset,
};
