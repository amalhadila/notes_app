import 'package:flutter/material.dart';
import 'package:notes/notes/presentation/views/edit_view.dart';

class TaskListviewItem extends StatefulWidget {
   TaskListviewItem({super.key, required this.task_name});
   String task_name;

  @override
  State<TaskListviewItem> createState() => _TaskListviewItemState();
}

class _TaskListviewItemState extends State<TaskListviewItem> {
     bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom:5.0,top: 5),
      child: Container(
      
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               ListTile(
                  title:
                    Text( widget.task_name,style:  TextStyle(color:isChecked? Colors.grey:Colors.black,fontSize: 16,fontWeight: FontWeight.w900,fontFamily:'inter' ),),
                  
                  
                      
                  leading: Container(
                    width: 37,
                    height: 37,
                    decoration: BoxDecoration(color: isChecked? Colors.grey:  Colors.white,
                    border: Border.all(color: Colors.grey),
                    
                    borderRadius: BorderRadius.circular(100)),
                  child:Checkbox(
                    checkColor: Colors.white,
                    fillColor: WidgetStatePropertyAll( isChecked? Colors.grey:  Colors.white),
                    side: BorderSide(color: Colors.transparent),
                    value: isChecked, onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },)
                ), ), 
               
              
            ],
          ),
        ),
      
    );
  }
}