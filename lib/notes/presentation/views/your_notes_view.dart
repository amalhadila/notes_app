import 'package:flutter/material.dart';
import 'package:notes/notes/presentation/views/view_body/add_button_sheet.dart';
import 'package:notes/notes/presentation/views/view_body/your_note_body.dart';

class YournotesView extends StatelessWidget {
  const YournotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              // shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(36)),
              context: context,
              builder: (context) {
                return const AddButtonSheet();
              },
            );
          },
          backgroundColor: Color(0xff77d4fc),
          shape: const CircleBorder(),
          child: Container(
            
            child: const Icon(Icons.add,color: Colors.white,)),
        ),
        body: const YourNoteBody());
  }
}
