// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserScore {

@JsonKey(name: "category_name") String get categoryName;@JsonKey(name: "questions_count") int get questionsCount;@JsonKey(name: "correct_answers_count") int get correctAnswersCount;@JsonKey(name: "user_id") String get userId;
/// Create a copy of UserScore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserScoreCopyWith<UserScore> get copyWith => _$UserScoreCopyWithImpl<UserScore>(this as UserScore, _$identity);

  /// Serializes this UserScore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserScore&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.questionsCount, questionsCount) || other.questionsCount == questionsCount)&&(identical(other.correctAnswersCount, correctAnswersCount) || other.correctAnswersCount == correctAnswersCount)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryName,questionsCount,correctAnswersCount,userId);

@override
String toString() {
  return 'UserScore(categoryName: $categoryName, questionsCount: $questionsCount, correctAnswersCount: $correctAnswersCount, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $UserScoreCopyWith<$Res>  {
  factory $UserScoreCopyWith(UserScore value, $Res Function(UserScore) _then) = _$UserScoreCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "category_name") String categoryName,@JsonKey(name: "questions_count") int questionsCount,@JsonKey(name: "correct_answers_count") int correctAnswersCount,@JsonKey(name: "user_id") String userId
});




}
/// @nodoc
class _$UserScoreCopyWithImpl<$Res>
    implements $UserScoreCopyWith<$Res> {
  _$UserScoreCopyWithImpl(this._self, this._then);

  final UserScore _self;
  final $Res Function(UserScore) _then;

/// Create a copy of UserScore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryName = null,Object? questionsCount = null,Object? correctAnswersCount = null,Object? userId = null,}) {
  return _then(_self.copyWith(
categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,questionsCount: null == questionsCount ? _self.questionsCount : questionsCount // ignore: cast_nullable_to_non_nullable
as int,correctAnswersCount: null == correctAnswersCount ? _self.correctAnswersCount : correctAnswersCount // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserScore].
extension UserScorePatterns on UserScore {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserScore value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserScore() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserScore value)  $default,){
final _that = this;
switch (_that) {
case _UserScore():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserScore value)?  $default,){
final _that = this;
switch (_that) {
case _UserScore() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "category_name")  String categoryName, @JsonKey(name: "questions_count")  int questionsCount, @JsonKey(name: "correct_answers_count")  int correctAnswersCount, @JsonKey(name: "user_id")  String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserScore() when $default != null:
return $default(_that.categoryName,_that.questionsCount,_that.correctAnswersCount,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "category_name")  String categoryName, @JsonKey(name: "questions_count")  int questionsCount, @JsonKey(name: "correct_answers_count")  int correctAnswersCount, @JsonKey(name: "user_id")  String userId)  $default,) {final _that = this;
switch (_that) {
case _UserScore():
return $default(_that.categoryName,_that.questionsCount,_that.correctAnswersCount,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "category_name")  String categoryName, @JsonKey(name: "questions_count")  int questionsCount, @JsonKey(name: "correct_answers_count")  int correctAnswersCount, @JsonKey(name: "user_id")  String userId)?  $default,) {final _that = this;
switch (_that) {
case _UserScore() when $default != null:
return $default(_that.categoryName,_that.questionsCount,_that.correctAnswersCount,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserScore implements UserScore {
  const _UserScore({@JsonKey(name: "category_name") required this.categoryName, @JsonKey(name: "questions_count") required this.questionsCount, @JsonKey(name: "correct_answers_count") required this.correctAnswersCount, @JsonKey(name: "user_id") required this.userId});
  factory _UserScore.fromJson(Map<String, dynamic> json) => _$UserScoreFromJson(json);

@override@JsonKey(name: "category_name") final  String categoryName;
@override@JsonKey(name: "questions_count") final  int questionsCount;
@override@JsonKey(name: "correct_answers_count") final  int correctAnswersCount;
@override@JsonKey(name: "user_id") final  String userId;

/// Create a copy of UserScore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserScoreCopyWith<_UserScore> get copyWith => __$UserScoreCopyWithImpl<_UserScore>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserScoreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserScore&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.questionsCount, questionsCount) || other.questionsCount == questionsCount)&&(identical(other.correctAnswersCount, correctAnswersCount) || other.correctAnswersCount == correctAnswersCount)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryName,questionsCount,correctAnswersCount,userId);

@override
String toString() {
  return 'UserScore(categoryName: $categoryName, questionsCount: $questionsCount, correctAnswersCount: $correctAnswersCount, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$UserScoreCopyWith<$Res> implements $UserScoreCopyWith<$Res> {
  factory _$UserScoreCopyWith(_UserScore value, $Res Function(_UserScore) _then) = __$UserScoreCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "category_name") String categoryName,@JsonKey(name: "questions_count") int questionsCount,@JsonKey(name: "correct_answers_count") int correctAnswersCount,@JsonKey(name: "user_id") String userId
});




}
/// @nodoc
class __$UserScoreCopyWithImpl<$Res>
    implements _$UserScoreCopyWith<$Res> {
  __$UserScoreCopyWithImpl(this._self, this._then);

  final _UserScore _self;
  final $Res Function(_UserScore) _then;

/// Create a copy of UserScore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryName = null,Object? questionsCount = null,Object? correctAnswersCount = null,Object? userId = null,}) {
  return _then(_UserScore(
categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,questionsCount: null == questionsCount ? _self.questionsCount : questionsCount // ignore: cast_nullable_to_non_nullable
as int,correctAnswersCount: null == correctAnswersCount ? _self.correctAnswersCount : correctAnswersCount // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
