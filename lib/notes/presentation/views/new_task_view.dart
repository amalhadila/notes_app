import 'package:flutter/material.dart';
import 'package:notes/notes/presentation/views/view_body/add_task.dart';

class NewTaskView extends StatelessWidget {
  const NewTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const AddTask());
  }
}