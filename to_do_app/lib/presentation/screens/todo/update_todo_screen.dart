import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app/app/extension/context_extensions.dart';
import 'package:to_do_app/domain/forms/todo_node_validator.dart';
import 'package:to_do_app/presentation/bloc/cubits/todo/update_todo_cubit.dart';
import 'package:to_do_app/presentation/bloc/side_effects/action_completed_side_effect.dart';
import 'package:to_do_app/presentation/bloc/state/process_state/process_state.dart';
import 'package:to_do_app/presentation/bloc/state/todo/update_todo_state/update_todo_state.dart';
import 'package:to_do_app/presentation/widgets/loading_data.dart';
import 'package:to_do_app/presentation/widgets/text_fields/todo_node_validation_text_field.dart';

part '../../widgets/update_todo_screen/loading_data_error.dart';
part '../../widgets/update_todo_screen/loaded_data.dart';

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
              child:
                  BlocSelector<UpdateTodoCubit, UpdateTodoState, ProcessState>(
                    selector: (state) => state.loadingDataState,
                    builder: (context, state) {
                      if (state is ProcessLoadingState) {
                        return LoadingData();
                      } else if (state is ProcessErrorState) {
                        return LoadingDataError();
                      }
                      return LoadedData();
                    },
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
