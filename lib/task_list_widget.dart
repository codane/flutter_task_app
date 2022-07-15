import 'package:flutter/material.dart';

class TaskListWidget extends StatelessWidget {
  const TaskListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context,int index) {
        return ListTile(
          title: Text("juhuuu $index"),
          );
      });
    
  }
}