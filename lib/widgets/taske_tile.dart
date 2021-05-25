import 'package:flutter/material.dart';
//import 'Task_Data';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  // final Function longPressCallback;
  final Function deleteTitle;

  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkboxCallback,
      // this.longPressCallback,
      this.deleteTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            color: Colors.lightGreen,
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),

      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FlatButton(
            child: Icon(
              Icons.delete,
              color: Colors.lightGreen,
            ),
            onPressed: () {
              deleteTitle();
            },
          ),
          Checkbox(
            activeColor: Colors.lightGreen,
            value: isChecked,
            onChanged: checkboxCallback,
          ),
        ],
      ),
    );
  }
}
