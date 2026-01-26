import 'package:freezed_annotation/freezed_annotation.dart';

part 'main.freezed.dart';
part 'main.g.dart';

@freezed
abstract class Main with _$Main {
  const factory Main({
    required double temp,
    required double feels_like,
    required double temp_min,
    required double temp_max,
    required int pressure,
    required int humidity,
    required int sea_level,
    required int grnd_level,
  }) = _Main;
  factory Main.fromJson(Map<String, Object?> json) => _$MainFromJson(json);
}
