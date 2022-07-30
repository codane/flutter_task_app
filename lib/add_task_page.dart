import 'package:flutter/material.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child:  TextField(
              decoration: InputDecoration(
                hintText: "Enter a new task",
              ),
            ),
          ),
          ElevatedButton(onPressed: () {}, 
          child: const Text("Save"),
          ),
        ],
      ),
    );
  }
}
