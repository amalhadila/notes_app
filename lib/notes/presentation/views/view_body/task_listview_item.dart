import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/notes/data/models/project_model.dart';
import 'package:notes/notes/presentation/manager/cubit/view_projects_cubit.dart';



class TaskListviewItem extends StatefulWidget {
  const TaskListviewItem({
    super.key,
    required this.task_name,
    required this.project,
    required this.status,
    required this.onChanged,
  });

  final String task_name;
  final ProjectModel project;
  final bool status;
  final ValueChanged<bool> onChanged;

  @override
  State<TaskListviewItem> createState() => _TaskListviewItemState();
}

class _TaskListviewItemState extends State<TaskListviewItem> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.status;    
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0, top: 5),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text(
                widget.task_name,
                style: TextStyle(
                  color: isChecked ? Colors.grey : Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'inter',
                  decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none,
                  
                ),
              ),
              leading: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: isChecked ? Colors.grey : Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Checkbox(
                  checkColor: Colors.white,
                  fillColor: WidgetStateProperty.all(isChecked ? Colors.grey : Colors.white),
                  side: const BorderSide(color: Colors.transparent),
                  value: isChecked,
                  onChanged: (bool? value) {
                    if (value != null) {
                      setState(() {
                        isChecked = value;
                        BlocProvider.of<ViewProjectsCubit>(context).fetch_all_projects();   
                      });

                      widget.onChanged(value);
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}