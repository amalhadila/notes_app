import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/notes/data/models/project_model.dart';
import 'package:notes/notes/presentation/manager/cubit/view_projects_cubit.dart';
import 'package:notes/notes/presentation/views/view_body/custom_appbar.dart';
import 'package:notes/notes/presentation/views/view_body/custom_text_field.dart';
import 'package:notes/notes/presentation/views/your_notes_view.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key, required this.project});
  final ProjectModel project;

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
   GlobalKey<FormState> formkey =GlobalKey();
 AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
   String?  title, subtitle;

  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:40.0,right: 5,left: 5),
      child: Column(
        children: [
          CustomAppbar(
            appbar_title: 'New Task',
            appicon: Icons.add,
            onPressed: () async{
              if(formkey.currentState!.validate()){
                formkey.currentState!.save();
               widget.project.taskmodel!.add(taskModel(task_title: title!));
               await widget.project.save();
               BlocProvider.of<ViewProjectsCubit>(context).fetch_all_projects();  
                Navigator.push(context, MaterialPageRoute(builder: (context){
                                                   return YournotesView() ;
                                                         }));
               ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Task added succefully'),
               backgroundColor: Color(0xff77d4fc),
              duration: Duration(seconds: 2),));


              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {
                  
                });    
              }              
            },
          ),
          Form(
            key: formkey,
            autovalidateMode: autovalidateMode,
            child: Column(children: [
               const SizedBox(height: 30,),
                      CustomTextField(
                        maxlins:3,
                        onsaved: (value){
                          title =value;
                        },
                        hintText: 'New Task',),                     
            ],),
          )                   
        ],
      ),
    );
  }
}