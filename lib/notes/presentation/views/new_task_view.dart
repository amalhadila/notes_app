import 'package:flutter/material.dart';
import 'package:notes/notes/data/models/project_model.dart';
import 'package:notes/notes/presentation/views/view_body/add_task.dart';

class NewTaskView extends StatelessWidget {
  const NewTaskView({super.key, required this.project});
  final ProjectModel project;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:  AddTask(project:project));
  }
}