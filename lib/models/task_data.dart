import 'package:flutter/foundation.dart';
import 'package:yamen_todo/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Go to gym'),
    Task(name: 'Learn flutter'),
    Task(name: 'Buy food'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  // void deleteTask(Task task) {
  //   _tasks.remove(task);
  //   notifyListeners();
  // }
  void delete (Task task)
  {
    _tasks.remove(task);
    notifyListeners();
  }
}