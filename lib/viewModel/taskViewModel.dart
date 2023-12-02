import 'package:flutter/material.dart';
import '../model/task.dart';
import '../repository/taskRepository.dart';

class TaskViewModel with ChangeNotifier {

  late final TaskRepository _taskRepository;
  // 비어있는(empty) 동적(growable: ture) 리스트 선언 방식
  List<Task> _taskList = List.empty(growable: true);

  // 생성자
  TaskViewModel() {
    print("DEBUG");
    _taskRepository = TaskRepository();
    _getTaskList();
  }

  // 다트의 getter 메서드 선언 방식
  List<Task> get taskList => _taskList;

  Future<void> _getTaskList() async {
    print("겟");
    _taskList = await _taskRepository.getTaskList();
    notifyListeners();
  }
}