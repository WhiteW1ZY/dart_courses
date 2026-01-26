import 'package:freezed_annotation/freezed_annotation.dart';

part 'sys.freezed.dart';
part 'sys.g.dart';

@freezed
abstract class Sys with _$Sys {
  const factory Sys({
    required String country,
    required int sunrise,
    required int sunset,
  }) = _Sys;
  factory Sys.fromJson(Map<String, Object?> json) => _$SysFromJson(json);
}
