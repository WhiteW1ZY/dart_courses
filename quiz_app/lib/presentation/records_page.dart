import 'package:flutter/material.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';

class RecordsPage extends StatelessWidget {
  const RecordsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final glossary = S.of(context);
    final appProvider = AppProvider.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(glossary.records), centerTitle: true),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const .all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: FutureBuilder(
                future: appProvider.databaseService.fetchResults(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final records = snapshot.data;
                    if (records!.isEmpty) {
                      return Text(
                        glossary.records_is_empty,
                        style: const TextStyle(fontSize: 20),
                      );
                    }
                    return Scrollbar(
                      child: ListView.builder(
                        itemCount: records.length,
                        itemBuilder: (context, index) {
                          final record = records[index];
                          return Card(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    record.categoryName,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    glossary.ID(record.userId),
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    glossary.correct_answers(
                                      record.correctAnswersCount,
                                      record.questionsCount,
                                    ),
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
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
