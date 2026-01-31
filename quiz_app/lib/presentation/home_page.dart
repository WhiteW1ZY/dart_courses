import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/navigation/routers/routes/home_route.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';

class HomePage extends StatefulWidget {
  final HomeRoute router;
  const HomePage({super.key, required this.router});

  @override
  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AppProvider get appProvider => AppProvider.of(context);
  HomeRoute get router => widget.router;

  void _singOut() {
    appProvider.authService.singOut();
  }

  void _openProfilePage() {
    context.push(router.profileRoute.routeAbsolutePath);
  }

  void _openCategoriesPage() {
    context.push(router.categoriesRoute.routeAbsolutePath);
  }

  void _openRecordsPage() {
    context.push(router.recordsRoute.routeAbsolutePath);
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    glossary.quiz_app,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    glossary.welcome_home_page,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: Colors.grey.shade600,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 20),
                      OutlinedButton(
                        onPressed: _openCategoriesPage,
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(0, 48),
                          side: BorderSide(color: Colors.grey.shade300),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          glossary.start,
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      OutlinedButton(
                        onPressed: _openProfilePage,
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(0, 48),
                          side: BorderSide(color: Colors.grey.shade300),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          glossary.profile,
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),
                      OutlinedButton(
                        onPressed: _openRecordsPage,
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(0, 48),
                          side: BorderSide(color: Colors.grey.shade300),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          glossary.records,
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                          ),
                        ),
                      ),

                      const SizedBox(height: 40),

                      ElevatedButton(
                        onPressed: _singOut,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(0, 48),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          glossary.sing_out,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
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
