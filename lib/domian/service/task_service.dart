import 'package:app_fluter_unitask/domian/model/task.dart';
import 'package:app_fluter_unitask/domian/repository/task_repository.dart';

class TaskService {
  final TaskRepository _taskRepository = TaskRepository();

  Future<List<Task>> getAllTask() async {
    return await _taskRepository.getAllTask();
  }
}