import 'package:flutter/material.dart';
import 'package:notes/notes/presentation/views/view_body/custom_appbar.dart';
import 'package:notes/notes/presentation/views/view_body/custom_text_field.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top:40.0,right: 5,left: 5),
      child: Column(
        children: [
          CustomAppbar(
            appbar_title: 'New Task',
            appicon: Icons.add,
          ),
                    SizedBox(height: 30,),
                    CustomTextField(hintText: 'New Task',),
                    SizedBox(height: 20,),
                    CustomTextField(hintText: 'content',maxlins:5),
        ],
      ),
    );
  }
}