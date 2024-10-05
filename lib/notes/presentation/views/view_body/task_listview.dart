import 'package:flutter/material.dart';
import 'package:notes/notes/data/models/project_model.dart';
import 'package:notes/notes/presentation/views/view_body/custom_appbar.dart';
import 'package:notes/notes/presentation/views/view_body/task_listview_item.dart';

class TaskListview extends StatelessWidget {
  const TaskListview({super.key, required this.project});
  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 50),
      child: Column(
        children: [
           CustomAppbar(appbar_title: project.project_title),
          const SizedBox(height: 25),
          Expanded(
            child: ListView.builder(
              itemCount: project.taskmodel != null ? project.taskmodel!.length : 0,
              padding: const EdgeInsets.all(0),
              itemBuilder: (context, index) {
                return TaskListviewItem(
                  status: project.taskmodel![index].status,
                  project: project,
                  task_name: project.taskmodel![index].task_title,
                  onChanged: (newValue) {
                    project.taskmodel![index].status = newValue;
                    project.save();

                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}