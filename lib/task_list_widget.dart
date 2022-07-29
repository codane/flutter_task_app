import 'package:flutter/material.dart';
import 'package:flutter_task_app/model/task_model.dart';

class TaskListWidget extends StatefulWidget {
  const TaskListWidget({Key? key}) : super(key: key);

  @override
  State<TaskListWidget> createState() => _TaskListWidgetState();
}

class _TaskListWidgetState extends State<TaskListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              "juhuuu $index",
              style: const TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          );
        });
  }
}
