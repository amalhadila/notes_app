import 'package:flutter/material.dart';
import 'package:notes/notes/presentation/views/view_body/project_listview_item.dart';

class ProjectListview extends StatelessWidget {
  const ProjectListview({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      //shrinkWrap: true,
      //physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(0),
      itemBuilder:(context,index){return ProjectListviewItem(task_name: '00000000',);});
  }
}