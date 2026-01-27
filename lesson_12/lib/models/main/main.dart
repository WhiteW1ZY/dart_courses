import 'package:freezed_annotation/freezed_annotation.dart';

part 'main.freezed.dart';
part 'main.g.dart';

@freezed
abstract class Main with _$Main {
  const factory Main({
    required double temp,
    @JsonKey(name: 'feels_like') required double feelsLike,
    @JsonKey(name: 'temp_min') required double tempMin,
    @JsonKey(name: 'temp_max') required double tempMax,
    required int pressure,
    required int humidity,
    @JsonKey(name: 'sea_level') required int seaLevel,
    @JsonKey(name: 'grnd_level') required int grndLevel,
  }) = _Main;
  factory Main.fromJson(Map<String, Object?> json) => _$MainFromJson(json);
}
