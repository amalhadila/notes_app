import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/notes/data/models/project_model.dart';
import 'package:notes/notes/presentation/manager/cubit/view_projects_cubit.dart';
import 'package:notes/notes/presentation/views/new_task_view.dart';
import 'package:notes/notes/presentation/views/tasks_view.dart';

class ProjectListviewItem extends StatelessWidget {
  const ProjectListviewItem({super.key, required this.project});
  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0, top: 5),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TasksView(
              project: project,
            );
          }));
        },
        child: Container(
          decoration: BoxDecoration(
              color: Color(project.color),
              borderRadius: BorderRadius.circular(38)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ListTile(
              contentPadding: const EdgeInsets.only(left: 18, right: 18),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 20.0, top: 20),
                child: Text(
                  project.project_title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'inter'),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: BlocBuilder<ViewProjectsCubit, ViewProjectsState>(
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '${project.taskmodel!.where((task) => task.status == true).length} / ${project.taskmodel!.length}',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'inter'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(66, 58, 192, 250),
                                    borderRadius: BorderRadius.circular(100)),
                                child: IconButton(
                                    onPressed: () async {
                                      await project.delete();
                                      BlocProvider.of<ViewProjectsCubit>(
                                              context)
                                          .fetch_all_projects();
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                        content: Text(
                                            'project deleted successfully'),
                                        backgroundColor: Colors.green,
                                        duration: Duration(seconds: 2),
                                      ));
                                    },
                                    icon: const Icon(
                                      Icons.delete_outline_rounded,
                                      color: Colors.white,
                                      size: 35,
                                    ))),
                            const Spacer(),
                            Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(66, 58, 192, 250),
                                    borderRadius: BorderRadius.circular(100)),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return NewTaskView(project: project);
                                      }));
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 35,
                                    ))),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
