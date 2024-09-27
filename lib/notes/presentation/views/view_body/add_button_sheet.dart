import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes/notes/data/models/project_model.dart';
import 'package:notes/notes/presentation/manager/cubit/add_project_cubit.dart';
import 'package:notes/notes/presentation/repo/repo_implemetation.dart';
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
            child: const Padding(
                padding:
                    EdgeInsets.only(top: 32.0, right: 16, left: 16, bottom: 32),
                child: SingleChildScrollView(
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
  String? title, subtitle;
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
          CustomTextField(
            onsaved: (value) {
              subtitle = value;
            },
            hintText: 'Content',
            maxlins: 5,
          ),
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
                    ProjectModel project = ProjectModel(
                        project_title: title!, color: Colors.blue.value);
                    BlocProvider.of<AddProjectCubit>(context)
                        .add_project(project);
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
