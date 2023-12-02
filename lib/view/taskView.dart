import 'package:flutter/material.dart';
import 'package:flutter_playground/viewModel/taskViewModel.dart';
import 'package:provider/provider.dart';

import '../model/task.dart';

class TaskView extends StatefulWidget {
  const TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {

  late List<Task> taskList;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MVVM")
      ),
      body: Consumer<TaskViewModel>(
        builder: (context, provider, child) {
          taskList = provider.taskList;
          return ListView.builder(
            itemCount: taskList.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "${taskList[index].id}: ${taskList[index].title}"
                ),

              );
            },
          );
        },
      ),

    );
  }
}

