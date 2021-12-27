import 'package:flutter/material.dart';
import 'package:todo_app/ui/list_tasks/tasks.dart';
class TaskData extends StatefulWidget {
  const TaskData({Key? key}) : super(key: key);

  @override
  State<TaskData> createState() => _TaskDataState();
}

class _TaskDataState extends State<TaskData> {
  List<Tasks> tasks = [
    Tasks(isDone: false, taskTitle: 'This is task 1',),
    Tasks(isDone: false, taskTitle: 'This is task 2',),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        tasks.first,
      ],
    );
  }
}
