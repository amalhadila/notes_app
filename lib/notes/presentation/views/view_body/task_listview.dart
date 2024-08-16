import 'package:flutter/material.dart';
import 'package:notes/notes/presentation/views/view_body/task_listview_item.dart';

class TaskListview extends StatelessWidget {
  const TaskListview({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      padding: EdgeInsets.all(0),
      itemBuilder:(context,index){return TaskListviewItem(task_name: '00000000',);});
  }
}