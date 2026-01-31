import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/navigation/routers/routes/home_route.dart';
import 'package:quiz_app/domain/models/quiz_result/quiz_result.dart';
import 'package:quiz_app/domain/models/user_score/user_score.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';

class QuizResultPage extends StatefulWidget {
  final QuizResult quizResult;
  final HomeRoute router;
  const QuizResultPage({
    super.key,
    required this.quizResult,
    required this.router,
  });

  @override
  State<StatefulWidget> createState() => _QuizResultPageState();
}

class _QuizResultPageState extends State<QuizResultPage> {
  HomeRoute get router => widget.router;
  QuizResult get quizResult => widget.quizResult;
  AppProvider get appProvider => AppProvider.of(context);

  bool isSaving = false;

  void _openMenu(BuildContext context, QuizResult quizResult) async {
    setState(() {
      isSaving = true;
    });
    await appProvider.databaseService.saveResult(
      UserScore(
        categoryName: quizResult.categoryName,
        questionsCount: quizResult.questionsCount,
        correctAnswersCount: quizResult.correctAnswersCount,
        userId: appProvider.authService.currentUser!.uid,
      ),
    );
    if (context.mounted) {
      context.go(router.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    final glossary = S.of(context);
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const .all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    glossary.you_passed_quiz,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      fontSize: 30,
                      color: Colors.black87,
                      fontWeight: .bold,
                    ),
                  ),
                  const SizedBox(height: 32),

                  Text(
                    glossary.quiz_theme(quizResult.categoryName),
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: Colors.grey.shade600,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 16),

                  Text(
                    glossary.question_count(quizResult.questionsCount),
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: Colors.grey.shade600,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 16),
                  Text(
                    glossary.correct_answers_count(
                      quizResult.correctAnswersCount,
                    ),
                    style: theme.textTheme.bodyMedium!.copyWith(
                      fontSize: 18,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(height: 32),

                  isSaving
                      ? Column(
                          mainAxisAlignment: .center,
                          crossAxisAlignment: .center,
                          children: [
                            const CircularProgressIndicator(
                              color: Colors.black,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              glossary.saving,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ],
                        )
                      : ElevatedButton(
                          onPressed: () {
                            _openMenu(context, quizResult);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            minimumSize: const Size(0, 48),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            glossary.go_menu,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
