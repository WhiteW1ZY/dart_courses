import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/navigation/routers/nested_routes/quiz_game_route.dart';
import 'package:quiz_app/domain/models/quiz_result/quiz_result.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';
import 'package:quiz_app/presentation/widgets/questions_widget.dart';

class QuizGamePage extends StatefulWidget {
  final QuizGameRoute router;
  final String categoryName;
  const QuizGamePage({
    super.key,
    required this.categoryName,
    required this.router,
  });

  @override
  State<StatefulWidget> createState() => _QuizGameState();
}

class _QuizGameState extends State<QuizGamePage> {
  AppProvider get appProvider => AppProvider.of(context);
  String get categoryName => widget.categoryName;
  QuizGameRoute get router => widget.router;

  void _openResult(QuizResult quizResult) {
    context.push(
      router.resultQuizRoute.routeAbsolutePath,
      extra: {'result': quizResult},
    );
  }

  @override
  Widget build(BuildContext context) {
    final glossary = S.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(glossary.quiz), centerTitle: true),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const .all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: FutureBuilder(
                future: appProvider.quizService.fetchQuestions(categoryName),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final questions = snapshot.data;
                    if (questions!.isEmpty) {
                      return Text(
                        glossary.questions_is_empty,
                        style: const TextStyle(fontSize: 20),
                      );
                    }
                    return QuestionsWidget(
                      questionList: questions,
                      openResultPage: _openResult,
                    );
                  } else if (snapshot.hasError) {
                    return Text(
                      glossary.error(snapshot.error ?? glossary.unknown_error),
                      style: const TextStyle(fontSize: 20),
                    );
                  } else {
                    return Column(
                      mainAxisAlignment: .center,
                      crossAxisAlignment: .center,
                      children: [
                        const CircularProgressIndicator(color: Colors.black),
                        const SizedBox(height: 16),
                        Text(
                          glossary.loading,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    );
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
