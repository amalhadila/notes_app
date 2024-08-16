import 'package:flutter/material.dart';
import 'package:notes/notes/presentation/views/view_body/add_button_sheet.dart';
import 'package:notes/notes/presentation/views/view_body/your_note_body.dart';

class YourNotesView extends StatelessWidget {
  const YourNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){showModalBottomSheet(context: context,
      builder: (context) {
        return const AddButtonSheet();
      },);},
      child: const Icon(Icons.add),),
      body: const YourNoteBody());
  }
}