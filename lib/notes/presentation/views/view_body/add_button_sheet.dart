import 'package:flutter/material.dart';
import 'package:notes/notes/data/models/project_model.dart';
import 'package:notes/notes/presentation/manager/cubit/add_project_cubit.dart';
import 'package:notes/notes/presentation/manager/cubit/view_projects_cubit.dart';
import 'package:notes/notes/presentation/repo/repo_implemetation.dart';
import 'package:notes/notes/presentation/views/view_body/colors_listView.dart';
import 'package:notes/notes/presentation/views/view_body/custom_buttom.dart';
import 'package:notes/notes/presentation/views/view_body/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddButtonSheet extends StatelessWidget {
  const AddButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddProjectCubit(RepoImplemetation()),
      child: BlocConsumer<AddProjectCubit, AddProjectState>(
        listener: (context, state) {
          if (state is AddProjectfailure) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('failed'),
              backgroundColor: Colors.red,
              duration: Duration(seconds: 2),
            ));
          }
          if (state is AddProjectsuccess) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Added successfully'),
              backgroundColor: Colors.green,
              duration: Duration(seconds: 2),
            ));
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddProjectloading? true : false,
            child:  Padding(
                padding:
                    EdgeInsets.only(top: 32.0, right: 16, left: 16, bottom: MediaQuery.of(context).viewInsets.bottom),
                child: const SingleChildScrollView(
                  child: buttom_sheet_form(),
                )),
          );
        },
      ),
    );
  }
}

class buttom_sheet_form extends StatefulWidget {
  const buttom_sheet_form({
    super.key,
  });

  @override
  State<buttom_sheet_form> createState() => _buttom_sheet_formState();
}

class _buttom_sheet_formState extends State<buttom_sheet_form> {
  @override
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  int task_num=1;
    List<String?> subtitle = [];
  String? title ;
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onsaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              itemBuilder: (context, index) {
               return Column(
                 children: [                  
                   CustomTextField(
                    onsaved: (value) {
                      subtitle.add(value) ;
                    },
                    hintText: ' Task ${index++}',
                    maxlins: 3,
                                 ),
                    const SizedBox(
            height: 12
          ),             
                 ],
               );
              },
              itemCount: task_num ,
             
            ),
          ),
          
          IconButton(
            onPressed: (){
              task_num++;
              setState(() {
                
              });
            },
            icon:Icon(Icons.add)),
            const SizedBox(
            height: 35,
          ),
            Center(child: ColorsListview()),
          const SizedBox(
            height: 45,
          ),
          BlocBuilder<AddProjectCubit, AddProjectState>(
           
            builder: (context, state) {
              return CustomButtom(
                isloading:  state is AddProjectloading ?true :false ,
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                     List<taskModel> tasks = subtitle
                        .where((task) => task != null && task.isNotEmpty) 
                        .map((task) => taskModel(
                              task_title: task!,
                              color: Colors.blue.value,
                            ))
                        .toList();

                    ProjectModel project = ProjectModel(
                        project_title: title!, content: '',taskmodel:tasks,color: Colors.blue.value);
                    BlocProvider.of<AddProjectCubit>(context)
                        .add_project(project);

                    BlocProvider.of<ViewProjectsCubit>(context).fetch_all_projects();    
                    
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
