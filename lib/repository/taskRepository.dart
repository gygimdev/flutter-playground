import '../dataSource/dataSource.dart';
import '../model/task.dart';

class TaskRepository {
  final DataSource _dataSource = DataSource();

  Future<List<Task>> getTaskList() {
    return _dataSource.getTaskList();
  }
}