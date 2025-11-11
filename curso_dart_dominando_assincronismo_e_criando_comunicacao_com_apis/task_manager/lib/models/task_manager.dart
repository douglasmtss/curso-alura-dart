import 'dart:async';

import 'package:main/models/task.dart';

class TaskManager {
  final List<Task> _listTasks = [];

  final StreamController<String> _streamController = StreamController<String>();
  Stream<String> get stream => _streamController.stream;

  void addTask(Task task) {
    _listTasks.add(task);
  }

  void toggleTaskStatus(String id) {
    int index = _listTasks.indexWhere((task) => task.id == id);
    Task task = _listTasks[index];
    task.isCompleted = !task.isCompleted;
    _listTasks[index] = task;
  }

  List<Task> getAll() {
    return _listTasks;
  }

  Task getById(String id) {
    return _listTasks.firstWhere((task) => task.id == id);
  }

  void delete(String id) {
    _listTasks.removeWhere((task) => task.id == id);
  }
}
