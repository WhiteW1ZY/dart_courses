import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_result.freezed.dart';
part 'quiz_result.g.dart';

@freezed
abstract class QuizResult with _$QuizResult {
  const factory QuizResult({
    @JsonKey(name: "category_name") required String categoryName,
    @JsonKey(name: "questions_count") required int questionsCount,
    @JsonKey(name: "correct_answers_count") required int correctAnswersCount,
  }) = _QuizResult;

  factory QuizResult.fromJson(Map<String, Object?> json) =>
      _$QuizResultFromJson(json);
}
