import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app/app/di/injection.dart';
import 'package:to_do_app/app/extension/context_extensions.dart';
import 'package:to_do_app/app/navigation/router/routes/root_route.dart';
import 'package:to_do_app/presentation/bloc/cubits/root_cubit.dart';
import 'package:to_do_app/presentation/bloc/side_effects/root_navigation_side_effect.dart';

class RootScreen extends StatefulWidget {
  final Widget child;
  const RootScreen({super.key, required this.child});

  @override
  State<StatefulWidget> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  Widget get child => widget.child;

  final _routes = getIt<RootRoute>();
  late final StreamSubscription<RootNavigationSideEffect> _subscription;

  @override
  void initState() {
    super.initState();
    _subscription = context.read<RootCubit>().sideEffects.listen((data) {
      if (!mounted) {
        return;
      }
      switch (data) {
        case ShowTodoListScreen():
          context.go(_routes.todoListRoute.routePath);
        case ShowSettingsScreen():
          context.go(_routes.profileRoute.routePath);
      }
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: context.read<RootCubit>().selectedPageIndex,
        onTap: (value) => switch (value) {
          0 => context.read<RootCubit>().showTodoListScreen(value),
          1 => context.read<RootCubit>().showSettingsScreen(value),
          _ => null,
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.task),
            label: context.glossary.tasks,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: context.glossary.profile,
          ),
        ],
      ),
    );
  }
}
