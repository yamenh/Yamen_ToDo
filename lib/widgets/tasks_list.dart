import 'package:flutter/material.dart';
import 'package:yamen_todo/widgets/taske_tile.dart';
import 'package:provider/provider.dart';
import 'package:yamen_todo/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              // longPressCallback: () {
              //   taskData.deleteTask(task);
              // },
              deleteTitle: ()
              {
                taskData.delete(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
