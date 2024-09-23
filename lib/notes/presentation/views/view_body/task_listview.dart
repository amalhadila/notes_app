import 'package:flutter/material.dart';
import 'package:notes/notes/presentation/views/view_body/custom_appbar.dart';
import 'package:notes/notes/presentation/views/view_body/task_listview_item.dart';

class TaskListview extends StatelessWidget {
  const TaskListview({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left:8.0,right: 8,top: 50),
      child: Column(
        children:[
          CustomAppbar(appbar_title: 'project tasks',),
          SizedBox(height: 25,),
           Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(0),
            itemBuilder:(context,index){return TaskListviewItem(task_name: '00000000',);}),
        ),
         ] ),
    );
  }
} 