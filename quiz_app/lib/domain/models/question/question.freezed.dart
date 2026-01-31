// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Question {

 int get id; String get question; String? get description; Answers get answers;@JsonKey(name: "multiple_correct_answers") String? get multipleCorrectAnswers;@JsonKey(name: "correct_answers") CorrectAnswers get correctAnswers; String? get explanation; String? get tip; List<Tag> get tags; String? get category; String? get difficulty;
/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionCopyWith<Question> get copyWith => _$QuestionCopyWithImpl<Question>(this as Question, _$identity);

  /// Serializes this Question to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Question&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.description, description) || other.description == description)&&(identical(other.answers, answers) || other.answers == answers)&&(identical(other.multipleCorrectAnswers, multipleCorrectAnswers) || other.multipleCorrectAnswers == multipleCorrectAnswers)&&(identical(other.correctAnswers, correctAnswers) || other.correctAnswers == correctAnswers)&&(identical(other.explanation, explanation) || other.explanation == explanation)&&(identical(other.tip, tip) || other.tip == tip)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.category, category) || other.category == category)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,description,answers,multipleCorrectAnswers,correctAnswers,explanation,tip,const DeepCollectionEquality().hash(tags),category,difficulty);

@override
String toString() {
  return 'Question(id: $id, question: $question, description: $description, answers: $answers, multipleCorrectAnswers: $multipleCorrectAnswers, correctAnswers: $correctAnswers, explanation: $explanation, tip: $tip, tags: $tags, category: $category, difficulty: $difficulty)';
}


}

/// @nodoc
abstract mixin class $QuestionCopyWith<$Res>  {
  factory $QuestionCopyWith(Question value, $Res Function(Question) _then) = _$QuestionCopyWithImpl;
@useResult
$Res call({
 int id, String question, String? description, Answers answers,@JsonKey(name: "multiple_correct_answers") String? multipleCorrectAnswers,@JsonKey(name: "correct_answers") CorrectAnswers correctAnswers, String? explanation, String? tip, List<Tag> tags, String? category, String? difficulty
});


$AnswersCopyWith<$Res> get answers;$CorrectAnswersCopyWith<$Res> get correctAnswers;

}
/// @nodoc
class _$QuestionCopyWithImpl<$Res>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._self, this._then);

  final Question _self;
  final $Res Function(Question) _then;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? question = null,Object? description = freezed,Object? answers = null,Object? multipleCorrectAnswers = freezed,Object? correctAnswers = null,Object? explanation = freezed,Object? tip = freezed,Object? tags = null,Object? category = freezed,Object? difficulty = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as Answers,multipleCorrectAnswers: freezed == multipleCorrectAnswers ? _self.multipleCorrectAnswers : multipleCorrectAnswers // ignore: cast_nullable_to_non_nullable
as String?,correctAnswers: null == correctAnswers ? _self.correctAnswers : correctAnswers // ignore: cast_nullable_to_non_nullable
as CorrectAnswers,explanation: freezed == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String?,tip: freezed == tip ? _self.tip : tip // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tag>,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnswersCopyWith<$Res> get answers {
  
  return $AnswersCopyWith<$Res>(_self.answers, (value) {
    return _then(_self.copyWith(answers: value));
  });
}/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CorrectAnswersCopyWith<$Res> get correctAnswers {
  
  return $CorrectAnswersCopyWith<$Res>(_self.correctAnswers, (value) {
    return _then(_self.copyWith(correctAnswers: value));
  });
}
}


/// Adds pattern-matching-related methods to [Question].
extension QuestionPatterns on Question {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Question value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Question() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Question value)  $default,){
final _that = this;
switch (_that) {
case _Question():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Question value)?  $default,){
final _that = this;
switch (_that) {
case _Question() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String question,  String? description,  Answers answers, @JsonKey(name: "multiple_correct_answers")  String? multipleCorrectAnswers, @JsonKey(name: "correct_answers")  CorrectAnswers correctAnswers,  String? explanation,  String? tip,  List<Tag> tags,  String? category,  String? difficulty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that.id,_that.question,_that.description,_that.answers,_that.multipleCorrectAnswers,_that.correctAnswers,_that.explanation,_that.tip,_that.tags,_that.category,_that.difficulty);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String question,  String? description,  Answers answers, @JsonKey(name: "multiple_correct_answers")  String? multipleCorrectAnswers, @JsonKey(name: "correct_answers")  CorrectAnswers correctAnswers,  String? explanation,  String? tip,  List<Tag> tags,  String? category,  String? difficulty)  $default,) {final _that = this;
switch (_that) {
case _Question():
return $default(_that.id,_that.question,_that.description,_that.answers,_that.multipleCorrectAnswers,_that.correctAnswers,_that.explanation,_that.tip,_that.tags,_that.category,_that.difficulty);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String question,  String? description,  Answers answers, @JsonKey(name: "multiple_correct_answers")  String? multipleCorrectAnswers, @JsonKey(name: "correct_answers")  CorrectAnswers correctAnswers,  String? explanation,  String? tip,  List<Tag> tags,  String? category,  String? difficulty)?  $default,) {final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that.id,_that.question,_that.description,_that.answers,_that.multipleCorrectAnswers,_that.correctAnswers,_that.explanation,_that.tip,_that.tags,_that.category,_that.difficulty);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Question implements Question {
  const _Question({required this.id, required this.question, required this.description, required this.answers, @JsonKey(name: "multiple_correct_answers") required this.multipleCorrectAnswers, @JsonKey(name: "correct_answers") required this.correctAnswers, required this.explanation, required this.tip, required final  List<Tag> tags, required this.category, required this.difficulty}): _tags = tags;
  factory _Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);

@override final  int id;
@override final  String question;
@override final  String? description;
@override final  Answers answers;
@override@JsonKey(name: "multiple_correct_answers") final  String? multipleCorrectAnswers;
@override@JsonKey(name: "correct_answers") final  CorrectAnswers correctAnswers;
@override final  String? explanation;
@override final  String? tip;
 final  List<Tag> _tags;
@override List<Tag> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  String? category;
@override final  String? difficulty;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionCopyWith<_Question> get copyWith => __$QuestionCopyWithImpl<_Question>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Question&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.description, description) || other.description == description)&&(identical(other.answers, answers) || other.answers == answers)&&(identical(other.multipleCorrectAnswers, multipleCorrectAnswers) || other.multipleCorrectAnswers == multipleCorrectAnswers)&&(identical(other.correctAnswers, correctAnswers) || other.correctAnswers == correctAnswers)&&(identical(other.explanation, explanation) || other.explanation == explanation)&&(identical(other.tip, tip) || other.tip == tip)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.category, category) || other.category == category)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,description,answers,multipleCorrectAnswers,correctAnswers,explanation,tip,const DeepCollectionEquality().hash(_tags),category,difficulty);

@override
String toString() {
  return 'Question(id: $id, question: $question, description: $description, answers: $answers, multipleCorrectAnswers: $multipleCorrectAnswers, correctAnswers: $correctAnswers, explanation: $explanation, tip: $tip, tags: $tags, category: $category, difficulty: $difficulty)';
}


}

/// @nodoc
abstract mixin class _$QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$QuestionCopyWith(_Question value, $Res Function(_Question) _then) = __$QuestionCopyWithImpl;
@override @useResult
$Res call({
 int id, String question, String? description, Answers answers,@JsonKey(name: "multiple_correct_answers") String? multipleCorrectAnswers,@JsonKey(name: "correct_answers") CorrectAnswers correctAnswers, String? explanation, String? tip, List<Tag> tags, String? category, String? difficulty
});


@override $AnswersCopyWith<$Res> get answers;@override $CorrectAnswersCopyWith<$Res> get correctAnswers;

}
/// @nodoc
class __$QuestionCopyWithImpl<$Res>
    implements _$QuestionCopyWith<$Res> {
  __$QuestionCopyWithImpl(this._self, this._then);

  final _Question _self;
  final $Res Function(_Question) _then;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? question = null,Object? description = freezed,Object? answers = null,Object? multipleCorrectAnswers = freezed,Object? correctAnswers = null,Object? explanation = freezed,Object? tip = freezed,Object? tags = null,Object? category = freezed,Object? difficulty = freezed,}) {
  return _then(_Question(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as Answers,multipleCorrectAnswers: freezed == multipleCorrectAnswers ? _self.multipleCorrectAnswers : multipleCorrectAnswers // ignore: cast_nullable_to_non_nullable
as String?,correctAnswers: null == correctAnswers ? _self.correctAnswers : correctAnswers // ignore: cast_nullable_to_non_nullable
as CorrectAnswers,explanation: freezed == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String?,tip: freezed == tip ? _self.tip : tip // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tag>,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnswersCopyWith<$Res> get answers {
  
  return $AnswersCopyWith<$Res>(_self.answers, (value) {
    return _then(_self.copyWith(answers: value));
  });
}/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CorrectAnswersCopyWith<$Res> get correctAnswers {
  
  return $CorrectAnswersCopyWith<$Res>(_self.correctAnswers, (value) {
    return _then(_self.copyWith(correctAnswers: value));
  });
}
}

// dart format on
