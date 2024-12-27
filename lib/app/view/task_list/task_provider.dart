import 'package:flutter/foundation.dart';
import 'package:lista_tareas/app/repository/task_repository.dart';

import '../../model/task.dart';

class TaskProvider extends ChangeNotifier {
  List<Task> _taskList = [];

  final TaskRepository _taskRepository = TaskRepository();

  Future<void> fetchTasks() async {
    _taskList = await _taskRepository.getTasks();
    notifyListeners();
  }

  List<Task> get taskList => _taskList;

  onTaskDoneChange(Task task) {
    task.done = !task.done;
    _taskRepository.saveTasks(_taskList);
    notifyListeners();
  }
}