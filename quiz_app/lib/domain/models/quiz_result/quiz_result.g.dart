// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuizResult _$QuizResultFromJson(Map<String, dynamic> json) => _QuizResult(
  categoryName: json['category_name'] as String,
  questionsCount: (json['questions_count'] as num).toInt(),
  correctAnswersCount: (json['correct_answers_count'] as num).toInt(),
);

Map<String, dynamic> _$QuizResultToJson(_QuizResult instance) =>
    <String, dynamic>{
      'category_name': instance.categoryName,
      'questions_count': instance.questionsCount,
      'correct_answers_count': instance.correctAnswersCount,
    };
