import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app/app/di/injection.dart';
import 'package:to_do_app/app/extension/context_extensions.dart';
import 'package:to_do_app/app/navigation/router/routes/root_routes/todo_list_route.dart';
import 'package:to_do_app/presentation/bloc/cubits/todo/todo_list_cubit.dart';
import 'package:to_do_app/presentation/bloc/side_effects/navigation_side_effect.dart';
import 'package:to_do_app/presentation/bloc/state/todo/todo_list_state/todo_list_state.dart';
import 'package:to_do_app/presentation/widgets/loading_data.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<StatefulWidget> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  final _routes = getIt<TodoListRoute>();
  late final StreamSubscription<NavigationSideEffect> _subscription;
  @override
  void initState() {
    super.initState();

    _subscription = context.read<TodoListCubit>().sideEffects.listen((data) {
      if (!mounted) {
        return;
      }
      switch (data) {
        case ShowAddTodoScreen():
          context.push(_routes.addTodoRoute.routeAbsolutePath);
        case ShowUpdateTodoScreen():
          context.push(
            _routes.updateTodoRoute.routeAbsolutePath,
            extra: data.todoId,
          );
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
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const .only(left: 24, right: 24, top: 30),
            child: BlocBuilder<TodoListCubit, TodoListState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return LoadingData();
                } else if (state.errorDescription != null) {
                  //тут могло быть ваше логгирование
                  debugPrint(state.errorDescription);

                  return Column(
                    children: [
                      const Icon(Icons.error_outline_sharp, size: 60),
                      const SizedBox(height: 15),
                      Text(
                        context.glossary.something_went_wrong,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  );
                }

                if (state.todos.isEmpty) {
                  return Text(
                    context.glossary.collection_is_empty_yet_add_fist_node,
                    style: TextStyle(fontSize: 22),
                    textAlign: .center,
                  );
                }

                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: .spaceAround,
                      children: [
                        Text(
                          context.glossary.my_todos,
                          style: TextStyle(fontSize: 28),
                          textAlign: .left,
                        ),
                        OutlinedButton(
                          onPressed: context
                              .read<TodoListCubit>()
                              .showAddTodoPage,
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          child: Text(context.glossary.add_todo),
                        ),
                      ],
                    ),

                    Expanded(
                      child: ListView.builder(
                        itemCount: state.todos.length,
                        itemBuilder: (context, index) {
                          final todo = state.todos[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Card(
                              elevation: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      todo.title,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      todo.description,
                                      style: const TextStyle(fontSize: 14),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 12),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        todo.isCompleted
                                            ? Text(
                                                context.glossary.completed,
                                                style: TextStyle(
                                                  color: context
                                                      .theme
                                                      .colorScheme
                                                      .onPrimary,
                                                ),
                                              )
                                            : IconButton(
                                                onPressed: () async =>
                                                    await context
                                                        .read<TodoListCubit>()
                                                        .completeTodoById(
                                                          todo.id!,
                                                        ),
                                                icon: Icon(
                                                  Icons.check_circle_outline,
                                                ),
                                                color: context
                                                    .theme
                                                    .colorScheme
                                                    .onPrimary,
                                              ),
                                        IconButton(
                                          onPressed: () => context
                                              .read<TodoListCubit>()
                                              .showUpdateTodoPage(todo.id!),
                                          icon: Icon(
                                            Icons.edit,
                                            color: context
                                                .theme
                                                .colorScheme
                                                .primary,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () async => await context
                                              .read<TodoListCubit>()
                                              .deleteTodoById(todo.id!),
                                          icon: Icon(
                                            Icons.delete_outline,
                                            color: context
                                                .theme
                                                .colorScheme
                                                .primary,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
