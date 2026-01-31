import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/navigation/routers/nested_routes/categories_route.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';

class CategoryPage extends StatefulWidget {
  final CategoriesRoute router;
  const CategoryPage({super.key, required this.router});

  @override
  State<StatefulWidget> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  AppProvider get appProvider => AppProvider.of(context);
  CategoriesRoute get router => widget.router;

  void _openQuiz(BuildContext context, String name) {
    context.push(router.quizGameRoute.routeAbsolutePath, extra: {'name': name});
  }

  @override
  Widget build(BuildContext context) {
    final glossary = S.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(glossary.category), centerTitle: true),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const .all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: FutureBuilder(
                future: appProvider.quizService.fetchCategories(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final categories = snapshot.data;
                    if (categories!.isEmpty) {
                      return Text(
                        glossary.category_is_empty,
                        style: const TextStyle(fontSize: 20),
                      );
                    }
                    return Scrollbar(
                      child: ListView.builder(
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          final name = categories[index].name;
                          return Padding(
                            padding: const EdgeInsetsGeometry.symmetric(
                              horizontal: 10,
                              vertical: 3,
                            ),
                            child: OutlinedButton(
                              onPressed: () {
                                _openQuiz(context, name);
                              },
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Text(
                                name,
                                style: const TextStyle(color: Colors.black),
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
