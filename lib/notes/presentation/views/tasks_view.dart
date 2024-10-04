import 'package:flutter/material.dart';
import 'package:notes/notes/data/models/project_model.dart';
import 'package:notes/notes/presentation/views/view_body/task_listview.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key, required this.project});
  final ProjectModel project;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: TaskListview(project: project,),
    );
  }
}