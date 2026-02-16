part of '../../screens/todo/update_todo_screen.dart';

class LoadedData extends StatelessWidget {
  const LoadedData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      crossAxisAlignment: .stretch,
      children: [
        Text(context.glossary.edit_task, style: const TextStyle(fontSize: 34)),

        const SizedBox(height: 20),

        BlocSelector<UpdateTodoCubit, UpdateTodoState, bool>(
          selector: (state) => state.updateTodoState == .loading(),
          builder: (context, isLoading) => Column(
            children: [
              BlocSelector<UpdateTodoCubit, UpdateTodoState, TodoNodeValidator>(
                selector: (state) => state.titleValidator,
                builder: (context, validator) => TodoNodeValidationTextField(
                  onChanged: context.read<UpdateTodoCubit>().onTitleChange,
                  initialValue: validator.value,
                  todoNodeValidationError: validator.displayError,
                  fieldType: .title,
                  readOnly: isLoading,
                ),
              ),

              const SizedBox(height: 15),

              BlocSelector<UpdateTodoCubit, UpdateTodoState, TodoNodeValidator>(
                selector: (state) => state.descriptionValidator,
                builder: (context, validator) => TodoNodeValidationTextField(
                  onChanged: context
                      .read<UpdateTodoCubit>()
                      .onDescriptionChange,
                  initialValue: validator.value,
                  todoNodeValidationError: validator.displayError,
                  fieldType: .description,
                  readOnly: isLoading,
                ),
              ),

              const SizedBox(height: 15),

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

              const SizedBox(height: 20),

              isLoading
                  ? const CircularProgressIndicator()
                  : Align(
                      alignment: .centerRight,
                      child: ElevatedButton(
                        onPressed: context.read<UpdateTodoCubit>().onSubmit,
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(190, 30),
                        ),
                        child: Row(
                          mainAxisAlignment: .spaceEvenly,
                          children: [
                            Text(
                              context.glossary.edit,
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
    );
  }
}
