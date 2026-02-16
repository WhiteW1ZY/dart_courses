import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app/app/extension/context_extensions.dart';
import 'package:to_do_app/domain/forms/todo_node_validator.dart';
import 'package:to_do_app/presentation/bloc/cubits/todo/add_todo_cubit.dart';
import 'package:to_do_app/presentation/bloc/side_effects/action_completed_side_effect.dart';
import 'package:to_do_app/presentation/bloc/state/todo/add_todo_state/add_todo_state.dart';
import 'package:to_do_app/presentation/bloc/state/process_state/process_state.dart';
import 'package:to_do_app/presentation/widgets/text_fields/todo_node_validation_text_field.dart';

class AddTodoScreen extends StatefulWidget {
  const AddTodoScreen({super.key});

  @override
  State<StatefulWidget> createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodoScreen> {
  late final StreamSubscription<ActionCompletedSideEffect> _subscription;
  @override
  void initState() {
    super.initState();

    _subscription = context.read<AddTodoCubit>().sideEffects.listen((data) {
      if (!mounted) {
        return;
      }
      switch (data) {
        case TaskCompletedSideEffect():
          context.pop();
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
    return BlocListener<AddTodoCubit, AddTodoState>(
      listenWhen: (previous, current) =>
          previous.addTodoState != current.addTodoState,
      listener: (context, state) {
        final processState = state.addTodoState;
        if (processState is ProcessErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(context.glossary.cannot_add_task)),
          );
        } else if (processState is ProcessSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(context.glossary.task_added_successfully)),
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const .symmetric(vertical: 60, horizontal: 25),
              child: Column(
                mainAxisAlignment: .center,
                crossAxisAlignment: .stretch,
                children: [
                  Text(
                    context.glossary.add_todo,
                    style: const TextStyle(fontSize: 32),
                  ),

                  const SizedBox(height: 20),

                  BlocSelector<AddTodoCubit, AddTodoState, bool>(
                    selector: (state) => state.addTodoState == .loading(),
                    builder: (context, isLoading) => Column(
                      children: [
                        BlocSelector<
                          AddTodoCubit,
                          AddTodoState,
                          TodoNodeValidator
                        >(
                          selector: (state) => state.titleValidator,
                          builder: (context, validator) =>
                              TodoNodeValidationTextField(
                                onChanged: context
                                    .read<AddTodoCubit>()
                                    .onTitleChange,
                                todoNodeValidationError: validator.displayError,
                                fieldType: .title,
                                readOnly: isLoading,
                              ),
                        ),

                        const SizedBox(height: 15),

                        BlocSelector<
                          AddTodoCubit,
                          AddTodoState,
                          TodoNodeValidator
                        >(
                          selector: (state) => state.descriptionValidator,
                          builder: (context, validator) =>
                              TodoNodeValidationTextField(
                                onChanged: context
                                    .read<AddTodoCubit>()
                                    .onDescriptionChange,
                                todoNodeValidationError: validator.displayError,
                                fieldType: .description,
                                readOnly: isLoading,
                              ),
                        ),

                        const SizedBox(height: 20),

                        isLoading
                            ? const CircularProgressIndicator()
                            : Align(
                                alignment: .centerRight,
                                child: ElevatedButton(
                                  onPressed: context
                                      .read<AddTodoCubit>()
                                      .onSubmit,
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(150, 30),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: .spaceEvenly,
                                    children: [
                                      Text(
                                        context.glossary.add,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: .bold,
                                        ),
                                      ),
                                      const Icon(Icons.arrow_forward, size: 16),
                                    ],
                                  ),
                                ),
                              ),
                      ],
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
