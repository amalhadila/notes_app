import 'package:flutter/material.dart';
import 'package:notes/notes/presentation/views/view_body/task_listview.dart';

class YourNoteBody extends StatelessWidget {
  const YourNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top:40.0,right: 5,left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal:8.0),
              child: Text('Hello',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,fontFamily:'inter' ),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:8.0),
              child: Text('Your',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,fontFamily:'inter' ),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:8.0),
              child: Text('Projects(4)',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,fontFamily:'inter' ),),
            ),
            SizedBox(height: 20,),
            Expanded(child: TaskListview()),
          ],
        
        ),
      ),
    );
  }
}