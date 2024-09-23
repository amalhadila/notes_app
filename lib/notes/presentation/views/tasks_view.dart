import 'package:flutter/material.dart';
import 'package:notes/notes/presentation/views/view_body/project_listview.dart';
import 'package:notes/notes/presentation/views/view_body/task_listview.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: TaskListview(),
    );
  }
}