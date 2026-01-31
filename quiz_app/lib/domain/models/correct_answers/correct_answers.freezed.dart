// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'correct_answers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CorrectAnswers {

@JsonKey(name: "answer_a_correct") String? get answerACorrect;@JsonKey(name: "answer_b_correct") String? get answerBCorrect;@JsonKey(name: "answer_c_correct") String? get answerCCorrect;@JsonKey(name: "answer_d_correct") String? get answerDCorrect;@JsonKey(name: "answer_e_correct") String? get answerECorrect;@JsonKey(name: "answer_f_correct") String? get answerFCorrect;
/// Create a copy of CorrectAnswers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CorrectAnswersCopyWith<CorrectAnswers> get copyWith => _$CorrectAnswersCopyWithImpl<CorrectAnswers>(this as CorrectAnswers, _$identity);

  /// Serializes this CorrectAnswers to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CorrectAnswers&&(identical(other.answerACorrect, answerACorrect) || other.answerACorrect == answerACorrect)&&(identical(other.answerBCorrect, answerBCorrect) || other.answerBCorrect == answerBCorrect)&&(identical(other.answerCCorrect, answerCCorrect) || other.answerCCorrect == answerCCorrect)&&(identical(other.answerDCorrect, answerDCorrect) || other.answerDCorrect == answerDCorrect)&&(identical(other.answerECorrect, answerECorrect) || other.answerECorrect == answerECorrect)&&(identical(other.answerFCorrect, answerFCorrect) || other.answerFCorrect == answerFCorrect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answerACorrect,answerBCorrect,answerCCorrect,answerDCorrect,answerECorrect,answerFCorrect);

@override
String toString() {
  return 'CorrectAnswers(answerACorrect: $answerACorrect, answerBCorrect: $answerBCorrect, answerCCorrect: $answerCCorrect, answerDCorrect: $answerDCorrect, answerECorrect: $answerECorrect, answerFCorrect: $answerFCorrect)';
}


}

/// @nodoc
abstract mixin class $CorrectAnswersCopyWith<$Res>  {
  factory $CorrectAnswersCopyWith(CorrectAnswers value, $Res Function(CorrectAnswers) _then) = _$CorrectAnswersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "answer_a_correct") String? answerACorrect,@JsonKey(name: "answer_b_correct") String? answerBCorrect,@JsonKey(name: "answer_c_correct") String? answerCCorrect,@JsonKey(name: "answer_d_correct") String? answerDCorrect,@JsonKey(name: "answer_e_correct") String? answerECorrect,@JsonKey(name: "answer_f_correct") String? answerFCorrect
});




}
/// @nodoc
class _$CorrectAnswersCopyWithImpl<$Res>
    implements $CorrectAnswersCopyWith<$Res> {
  _$CorrectAnswersCopyWithImpl(this._self, this._then);

  final CorrectAnswers _self;
  final $Res Function(CorrectAnswers) _then;

/// Create a copy of CorrectAnswers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answerACorrect = freezed,Object? answerBCorrect = freezed,Object? answerCCorrect = freezed,Object? answerDCorrect = freezed,Object? answerECorrect = freezed,Object? answerFCorrect = freezed,}) {
  return _then(_self.copyWith(
answerACorrect: freezed == answerACorrect ? _self.answerACorrect : answerACorrect // ignore: cast_nullable_to_non_nullable
as String?,answerBCorrect: freezed == answerBCorrect ? _self.answerBCorrect : answerBCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerCCorrect: freezed == answerCCorrect ? _self.answerCCorrect : answerCCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerDCorrect: freezed == answerDCorrect ? _self.answerDCorrect : answerDCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerECorrect: freezed == answerECorrect ? _self.answerECorrect : answerECorrect // ignore: cast_nullable_to_non_nullable
as String?,answerFCorrect: freezed == answerFCorrect ? _self.answerFCorrect : answerFCorrect // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CorrectAnswers].
extension CorrectAnswersPatterns on CorrectAnswers {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CorrectAnswers value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CorrectAnswers() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CorrectAnswers value)  $default,){
final _that = this;
switch (_that) {
case _CorrectAnswers():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CorrectAnswers value)?  $default,){
final _that = this;
switch (_that) {
case _CorrectAnswers() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "answer_a_correct")  String? answerACorrect, @JsonKey(name: "answer_b_correct")  String? answerBCorrect, @JsonKey(name: "answer_c_correct")  String? answerCCorrect, @JsonKey(name: "answer_d_correct")  String? answerDCorrect, @JsonKey(name: "answer_e_correct")  String? answerECorrect, @JsonKey(name: "answer_f_correct")  String? answerFCorrect)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CorrectAnswers() when $default != null:
return $default(_that.answerACorrect,_that.answerBCorrect,_that.answerCCorrect,_that.answerDCorrect,_that.answerECorrect,_that.answerFCorrect);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "answer_a_correct")  String? answerACorrect, @JsonKey(name: "answer_b_correct")  String? answerBCorrect, @JsonKey(name: "answer_c_correct")  String? answerCCorrect, @JsonKey(name: "answer_d_correct")  String? answerDCorrect, @JsonKey(name: "answer_e_correct")  String? answerECorrect, @JsonKey(name: "answer_f_correct")  String? answerFCorrect)  $default,) {final _that = this;
switch (_that) {
case _CorrectAnswers():
return $default(_that.answerACorrect,_that.answerBCorrect,_that.answerCCorrect,_that.answerDCorrect,_that.answerECorrect,_that.answerFCorrect);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "answer_a_correct")  String? answerACorrect, @JsonKey(name: "answer_b_correct")  String? answerBCorrect, @JsonKey(name: "answer_c_correct")  String? answerCCorrect, @JsonKey(name: "answer_d_correct")  String? answerDCorrect, @JsonKey(name: "answer_e_correct")  String? answerECorrect, @JsonKey(name: "answer_f_correct")  String? answerFCorrect)?  $default,) {final _that = this;
switch (_that) {
case _CorrectAnswers() when $default != null:
return $default(_that.answerACorrect,_that.answerBCorrect,_that.answerCCorrect,_that.answerDCorrect,_that.answerECorrect,_that.answerFCorrect);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CorrectAnswers implements CorrectAnswers {
  const _CorrectAnswers({@JsonKey(name: "answer_a_correct") required this.answerACorrect, @JsonKey(name: "answer_b_correct") required this.answerBCorrect, @JsonKey(name: "answer_c_correct") required this.answerCCorrect, @JsonKey(name: "answer_d_correct") required this.answerDCorrect, @JsonKey(name: "answer_e_correct") required this.answerECorrect, @JsonKey(name: "answer_f_correct") required this.answerFCorrect});
  factory _CorrectAnswers.fromJson(Map<String, dynamic> json) => _$CorrectAnswersFromJson(json);

@override@JsonKey(name: "answer_a_correct") final  String? answerACorrect;
@override@JsonKey(name: "answer_b_correct") final  String? answerBCorrect;
@override@JsonKey(name: "answer_c_correct") final  String? answerCCorrect;
@override@JsonKey(name: "answer_d_correct") final  String? answerDCorrect;
@override@JsonKey(name: "answer_e_correct") final  String? answerECorrect;
@override@JsonKey(name: "answer_f_correct") final  String? answerFCorrect;

/// Create a copy of CorrectAnswers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CorrectAnswersCopyWith<_CorrectAnswers> get copyWith => __$CorrectAnswersCopyWithImpl<_CorrectAnswers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CorrectAnswersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CorrectAnswers&&(identical(other.answerACorrect, answerACorrect) || other.answerACorrect == answerACorrect)&&(identical(other.answerBCorrect, answerBCorrect) || other.answerBCorrect == answerBCorrect)&&(identical(other.answerCCorrect, answerCCorrect) || other.answerCCorrect == answerCCorrect)&&(identical(other.answerDCorrect, answerDCorrect) || other.answerDCorrect == answerDCorrect)&&(identical(other.answerECorrect, answerECorrect) || other.answerECorrect == answerECorrect)&&(identical(other.answerFCorrect, answerFCorrect) || other.answerFCorrect == answerFCorrect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answerACorrect,answerBCorrect,answerCCorrect,answerDCorrect,answerECorrect,answerFCorrect);

@override
String toString() {
  return 'CorrectAnswers(answerACorrect: $answerACorrect, answerBCorrect: $answerBCorrect, answerCCorrect: $answerCCorrect, answerDCorrect: $answerDCorrect, answerECorrect: $answerECorrect, answerFCorrect: $answerFCorrect)';
}


}

/// @nodoc
abstract mixin class _$CorrectAnswersCopyWith<$Res> implements $CorrectAnswersCopyWith<$Res> {
  factory _$CorrectAnswersCopyWith(_CorrectAnswers value, $Res Function(_CorrectAnswers) _then) = __$CorrectAnswersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "answer_a_correct") String? answerACorrect,@JsonKey(name: "answer_b_correct") String? answerBCorrect,@JsonKey(name: "answer_c_correct") String? answerCCorrect,@JsonKey(name: "answer_d_correct") String? answerDCorrect,@JsonKey(name: "answer_e_correct") String? answerECorrect,@JsonKey(name: "answer_f_correct") String? answerFCorrect
});




}
/// @nodoc
class __$CorrectAnswersCopyWithImpl<$Res>
    implements _$CorrectAnswersCopyWith<$Res> {
  __$CorrectAnswersCopyWithImpl(this._self, this._then);

  final _CorrectAnswers _self;
  final $Res Function(_CorrectAnswers) _then;

/// Create a copy of CorrectAnswers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answerACorrect = freezed,Object? answerBCorrect = freezed,Object? answerCCorrect = freezed,Object? answerDCorrect = freezed,Object? answerECorrect = freezed,Object? answerFCorrect = freezed,}) {
  return _then(_CorrectAnswers(
answerACorrect: freezed == answerACorrect ? _self.answerACorrect : answerACorrect // ignore: cast_nullable_to_non_nullable
as String?,answerBCorrect: freezed == answerBCorrect ? _self.answerBCorrect : answerBCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerCCorrect: freezed == answerCCorrect ? _self.answerCCorrect : answerCCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerDCorrect: freezed == answerDCorrect ? _self.answerDCorrect : answerDCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerECorrect: freezed == answerECorrect ? _self.answerECorrect : answerECorrect // ignore: cast_nullable_to_non_nullable
as String?,answerFCorrect: freezed == answerFCorrect ? _self.answerFCorrect : answerFCorrect // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
