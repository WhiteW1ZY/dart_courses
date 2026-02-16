part of '../../screens/todo/update_todo_screen.dart';

class LoadingDataError extends StatelessWidget {
  const LoadingDataError({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      children: [
        Text(
          context.glossary.something_went_wrong_when_data_loading,
          style: const TextStyle(fontSize: 23),
          textAlign: .center,
        ),

        const SizedBox(height: 10),

        ElevatedButton(
          onPressed: context.read<UpdateTodoCubit>().loadTodoEntity,

          child: Text(
            context.glossary.update,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
