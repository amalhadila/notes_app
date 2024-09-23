import 'package:flutter/material.dart';
import 'package:notes/notes/presentation/views/view_body/custom_buttom.dart';
import 'package:notes/notes/presentation/views/view_body/custom_text_field.dart';

class AddButtonSheet extends StatelessWidget {
  const AddButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top:32.0,right: 16,left: 16,bottom: 32),
      child: SingleChildScrollView(
        child: Column(
        children: [
          CustomTextField(
            hintText: 'Title',
          ),
          SizedBox(height: 12,),
                  CustomTextField(
            hintText: 'Content',
           maxlins: 5,
          ),
          SizedBox(height: 45,),
          CustomButtom(),
           SizedBox(height: 12,),
        ],
            ),
      ));
  }
}