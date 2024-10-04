import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/notes/data/models/project_model.dart';
import 'package:notes/notes/presentation/manager/cubit/view_projects_cubit.dart';
import 'package:notes/notes/presentation/views/view_body/project_listview_item.dart';

class ProjectListview extends StatelessWidget {
  const ProjectListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewProjectsCubit, ViewProjectsState>(
      builder: (context, state) {
        List<ProjectModel>? projects= BlocProvider.of<ViewProjectsCubit>(context).allprojects ??[];
        return ListView.builder(
            //shrinkWrap: true,
            //physics: NeverScrollableScrollPhysics(),
            
            itemCount: projects.length ,
            padding: const EdgeInsets.all(0),
            itemBuilder: (context, index) {
              return ProjectListviewItem(
                project: projects[index],
              );
            });
      },
    );
  }
}
