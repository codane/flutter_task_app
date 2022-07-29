import 'package:flutter/material.dart';
import 'package:flutter_task_app/add_task_page.dart';
import 'task_list_widget.dart';
import 'top_custom_clipper.dart';

void main() {
  runApp(const MaterialApp(
    home: TaskApp(),
  ));
}

class TaskApp extends StatelessWidget {
  const TaskApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipPath(
            clipper: TopCustomClipper(),
            child: Container(
              height: 200,
              color: Colors.amber,
            ),
          ),
          const Text(
            "List of tasks",
            style: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic,
            ),
          ),
          const Expanded(
            child: TaskListWidget(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AddTaskPage()));
        },
      ),
    );
  }
}
