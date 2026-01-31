import 'package:flutter/material.dart';
import 'package:quiz_app/domain/models/correct_answers/correct_answers.dart';
import 'package:quiz_app/domain/models/question/question.dart';
import 'package:quiz_app/domain/models/quiz_result/quiz_result.dart';
import 'package:quiz_app/generated/l10n.dart';

class QuestionsWidget extends StatefulWidget {
  final List<Question> questionList;
  final Function(QuizResult quizResult) openResultPage;
  const QuestionsWidget({
    super.key,
    required this.questionList,
    required this.openResultPage,
  });

  @override
  State<StatefulWidget> createState() => _QuestionsWidgetState();
}

class _QuestionsWidgetState extends State<QuestionsWidget> {
  List<Question> get questionsList => widget.questionList;
  Function(QuizResult quizResult) get openResultPage => widget.openResultPage;

  bool isShowAnswersState = false;
  int currentIndex = 0;

  int correctAnswersCount = 0;

  void checkAnswer(bool isCorrectAnswer) async {
    if (isShowAnswersState) {
      return;
    }
    if (isCorrectAnswer) {
      correctAnswersCount++;
    }

    setState(() => isShowAnswersState = true);

    await Future.delayed(const Duration(seconds: 1));

    setState(() {
      isShowAnswersState = false;

      if (currentIndex != questionsList.length - 1) {
        currentIndex++;
      } else {
        openResultPage(
          QuizResult(
            categoryName: questionsList[0].category!,
            questionsCount: questionsList.length,
            correctAnswersCount: correctAnswersCount,
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final glossary = S.of(context);
    final currentQuestion = questionsList[currentIndex];
    final answers = currentQuestion.answers;
    final correctAnswer = currentQuestion.correctAnswers;
    return Column(
      mainAxisAlignment: .center,
      crossAxisAlignment: .stretch,
      children: [
        Text(
          currentQuestion.question,
          style: const TextStyle(fontSize: 20, fontWeight: .bold),
          textAlign: .center,
        ),

        currentQuestion.description != null
            ? Padding(
                padding: const EdgeInsetsGeometry.only(top: 16),
                child: Text(
                  currentQuestion.description!,
                  style: const TextStyle(fontSize: 20, color: Colors.grey),
                  textAlign: .center,
                ),
              )
            : const SizedBox.shrink(),

        const SizedBox(height: 16),

        _createAnswerButton(answers.answerA, correctAnswer.answerACorrect),
        _createAnswerButton(answers.answerB, correctAnswer.answerBCorrect),
        _createAnswerButton(answers.answerC, correctAnswer.answerCCorrect),
        _createAnswerButton(answers.answerD, correctAnswer.answerDCorrect),
        _createAnswerButton(answers.answerE, correctAnswer.answerECorrect),
        _createAnswerButton(answers.answerF, correctAnswer.answerFCorrect),

        Padding(
          padding: const .only(top: 25),
          child: Text(
            glossary.questions(currentIndex + 1, questionsList.length),
            style: const TextStyle(fontSize: 16),
            textAlign: .center,
          ),
        ),
      ],
    );
  }

  Widget _createAnswerButton(String? answer, String? isCorrectAnswerString) {
    final isCorrectAnswer = CorrectAnswers.parseBool(isCorrectAnswerString);
    return answer != null
        ? Padding(
            padding: const .only(top: 16),
            child: OutlinedButton(
              onPressed: () {
                checkAnswer(isCorrectAnswer);
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: isShowAnswersState
                    ? isCorrectAnswer
                          ? Colors.green
                          : Colors.red
                    : null,
              ),
              child: Text(answer, style: const TextStyle(color: Colors.black)),
            ),
          )
        : const SizedBox.shrink();
  }
}
