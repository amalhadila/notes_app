import 'package:flutter/material.dart';
import 'package:notes/notes/presentation/views/view_body/custom_appbar.dart';
import 'package:notes/notes/presentation/views/view_body/custom_text_field.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
   GlobalKey<FormState> formkey=GlobalKey();
 AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
   String?  title, subtitle;

  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top:40.0,right: 5,left: 5),
      child: Column(
        children: [
          CustomAppbar(
            appbar_title: 'New Task',
            appicon: Icons.add,
            onPressed: (){
              if(formkey.currentState!.validate()){
                formkey.currentState!.save();
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
               SizedBox(height: 30,),
                      CustomTextField(
                        onsaved: (value) {
                          title =value;
                        },
                        hintText: 'New Task',),
                      SizedBox(height: 20,),
                      CustomTextField(
                        onsaved: (value) {
                          subtitle=value;                          
                        },
                        hintText: 'content',maxlins:5),
            ],),
          )
                   
        ],
      ),
    );
  }
}