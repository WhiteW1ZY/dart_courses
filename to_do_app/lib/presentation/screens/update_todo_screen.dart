import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app/app/extension/context_extensions.dart';
import 'package:to_do_app/domain/forms/todo_node_validator.dart';
import 'package:to_do_app/presentation/bloc/cubits/update_todo_cubit.dart';
import 'package:to_do_app/presentation/bloc/side_effects/action_completed_side_effect.dart';
import 'package:to_do_app/presentation/bloc/state/process_state/process_state.dart';
import 'package:to_do_app/presentation/bloc/state/update_todo_state/update_todo_state.dart';
import 'package:to_do_app/presentation/widgets/text_fields/todo_node_validation_text_field.dart';

class UpdateTodoScreen extends StatefulWidget {
  const UpdateTodoScreen({super.key});

  @override
  State<StatefulWidget> createState() => _UpdateTodoScreenState();
}

class _UpdateTodoScreenState extends State<UpdateTodoScreen> {
  late final StreamSubscription<ActionCompletedSideEffect> _subscription;
  @override
  void initState() {
    super.initState();

    _subscription = context.read<UpdateTodoCubit>().sideEffects.listen((data) {
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
    return BlocListener<UpdateTodoCubit, UpdateTodoState>(
      listenWhen: (previous, current) =>
          previous.updateTodoState != current.updateTodoState,
      listener: (context, state) {
        final processState = state.updateTodoState;
        if (processState is ProcessErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(context.glossary.cannot_edit_task)),
          );
        } else if (processState is ProcessSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(context.glossary.task_eddited_successfully)),
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
                    context.glossary.edit_task,
                    style: const TextStyle(fontSize: 35),
                  ),

                  const SizedBox(height: 30),

                  BlocSelector<UpdateTodoCubit, UpdateTodoState, bool>(
                    selector: (state) => state.updateTodoState == .loading(),
                    builder: (context, isLoading) => Column(
                      children: [
                        BlocSelector<
                          UpdateTodoCubit,
                          UpdateTodoState,
                          TodoNodeValidator
                        >(
                          selector: (state) => state.titleValidator,
                          builder: (context, validator) =>
                              TodoNodeValidationTextField(
                                onChanged: context
                                    .read<UpdateTodoCubit>()
                                    .onTitleChange,
                                initialValue: validator.value,
                                todoNodeValidationError: validator.displayError,
                                fieldType: .title,
                                readOnly: isLoading,
                              ),
                        ),

                        const SizedBox(height: 20),

                        BlocSelector<
                          UpdateTodoCubit,
                          UpdateTodoState,
                          TodoNodeValidator
                        >(
                          selector: (state) => state.descriptionValidator,
                          builder: (context, validator) =>
                              TodoNodeValidationTextField(
                                onChanged: context
                                    .read<UpdateTodoCubit>()
                                    .onDescriptionChange,
                                initialValue: validator.value,
                                todoNodeValidationError: validator.displayError,
                                fieldType: .description,
                                readOnly: isLoading,
                              ),
                        ),

                        const SizedBox(height: 20),

                        BlocSelector<UpdateTodoCubit, UpdateTodoState, bool>(
                          selector: (state) => state.isCompleted,
                          builder: (context, isCompleted) => Row(
                            mainAxisAlignment: .end,
                            children: [
                              Text(
                                context.glossary.is_task_completed,
                                style: TextStyle(fontSize: 20),
                              ),
                              Checkbox(
                                value: isCompleted,
                                onChanged: isLoading
                                    ? null
                                    : (value) {
                                        context
                                            .read<UpdateTodoCubit>()
                                            .onCompletedChanged();
                                      },
                                activeColor: Theme.of(context).primaryColor,
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 30),

                        isLoading
                            ? const CircularProgressIndicator()
                            : Align(
                                alignment: .centerRight,
                                child: ElevatedButton(
                                  onPressed: context
                                      .read<UpdateTodoCubit>()
                                      .onSubmit,
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(220, 50),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: .spaceEvenly,
                                    children: [
                                      Text(
                                        context.glossary.edit,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: .bold,
                                        ),
                                      ),
                                      const Icon(Icons.arrow_forward, size: 18),
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
