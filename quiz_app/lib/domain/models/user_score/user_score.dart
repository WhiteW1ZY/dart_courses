import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_score.freezed.dart';
part 'user_score.g.dart';

@freezed
abstract class UserScore with _$UserScore {
  const factory UserScore({
    @JsonKey(name: "category_name") required String categoryName,
    @JsonKey(name: "questions_count") required int questionsCount,
    @JsonKey(name: "correct_answers_count") required int correctAnswersCount,
    @JsonKey(name: "user_id") required String userId,
  }) = _UserScore;

  factory UserScore.fromJson(Map<String, dynamic> json) =>
      _$UserScoreFromJson(json);
}
