import 'package:flutter/material.dart';
import 'package:flutter_playground/view/taskView.dart';
import 'package:flutter_playground/viewModel/taskViewModel.dart';
import 'package:provider/provider.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "mvvm",
      home: ChangeNotifierProvider<TaskViewModel>(
        create: (context) => TaskViewModel(),
        child: const TaskView(),
      ),
    );
  }
}
