import 'package:flutter/material.dart';
import 'package:task_1/providers/to_do.dart';

import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _todo = Todo();
  final _textController = TextEditingController();

  void _addTask() => _todo.addTask(_textController.text);
  void _removeTask(int index) => _todo.removeTask(index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MobX To-Do List"), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: const .symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: .start,
            crossAxisAlignment: .center,
            children: [
              Row(
                mainAxisAlignment: .center,
                children: [
                  Expanded(child: TextFormField(controller: _textController)),
                  IconButton(onPressed: _addTask, icon: const Icon(Icons.add)),
                ],
              ),

              Expanded(
                child: Observer(
                  builder: (_) => Column(
                    children: [
                      Text("Total Tasks: ${_todo.taskCount}"),
                      Expanded(
                        child: ListView.builder(
                          itemCount: _todo.taskCount,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(_todo.tasks[index].description),
                              trailing: IconButton(
                                onPressed: () => _removeTask(index),
                                icon: const Icon(Icons.remove),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
