import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app/app/di/injection.dart';
import 'package:to_do_app/app/extension/context_extensions.dart';
import 'package:to_do_app/app/navigation/router/routes/todo_list_route.dart';
import 'package:to_do_app/presentation/bloc/cubits/todo_list_cubit.dart';
import 'package:to_do_app/presentation/bloc/side_effects/navigation_side_effect.dart';
import 'package:to_do_app/presentation/bloc/state/todo_list_state/todo_list_state.dart';

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
            extra: data.todo,
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
    final listViewHeigth = MediaQuery.of(context).size.height * 0.7;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async =>
                await context.read<TodoListCubit>().signOut(),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<TodoListCubit>().showAddTodoPage,
        child: const Icon(Icons.add, size: 30),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const .all(24),
            child: BlocBuilder<TodoListCubit, TodoListState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const CircularProgressIndicator();
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
                    Text(
                      context.glossary.my_todos,
                      style: TextStyle(fontSize: 40),
                    ),

                    const SizedBox(height: 20),

                    SizedBox(
                      height: listViewHeigth,
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
                                            ? Text(context.glossary.completed)
                                            : IconButton(
                                                onPressed: () async =>
                                                    await context
                                                        .read<TodoListCubit>()
                                                        .completeTodoById(
                                                          todo.id!,
                                                        ),
                                                icon: const Icon(
                                                  Icons.check_circle_outline,
                                                ),
                                                color: Colors.green,
                                              ),
                                        IconButton(
                                          onPressed: () => context
                                              .read<TodoListCubit>()
                                              .showUpdateTodoPage(todo),
                                          icon: const Icon(Icons.edit),
                                          color: Colors.blue,
                                        ),
                                        IconButton(
                                          onPressed: () async => await context
                                              .read<TodoListCubit>()
                                              .deleteTodoById(todo.id!),
                                          icon: const Icon(
                                            Icons.delete_outline,
                                          ),
                                          color: Colors.red,
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
