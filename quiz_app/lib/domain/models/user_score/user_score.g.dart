// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserScore _$UserScoreFromJson(Map<String, dynamic> json) => _UserScore(
  categoryName: json['category_name'] as String,
  questionsCount: (json['questions_count'] as num).toInt(),
  correctAnswersCount: (json['correct_answers_count'] as num).toInt(),
  userId: json['user_id'] as String,
);

Map<String, dynamic> _$UserScoreToJson(_UserScore instance) =>
    <String, dynamic>{
      'category_name': instance.categoryName,
      'questions_count': instance.questionsCount,
      'correct_answers_count': instance.correctAnswersCount,
      'user_id': instance.userId,
    };
