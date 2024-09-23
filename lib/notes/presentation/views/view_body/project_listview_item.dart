import 'package:flutter/material.dart';
import 'package:notes/notes/presentation/views/new_task_view.dart';
import 'package:notes/notes/presentation/views/tasks_view.dart';

class ProjectListviewItem extends StatelessWidget {
   ProjectListviewItem({super.key, required this.task_name});
   String task_name;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom:5.0,top: 5),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return TasksView(); 
          }));
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(38)
        
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 ListTile(
                    contentPadding: EdgeInsets.only(left:15,right: 15),
                    title:Padding(
                      padding: const EdgeInsets.only(bottom:38.0,top: 25),
                      child: Text( task_name,style: const TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w900,fontFamily:'inter' ),),
                    ),
                    subtitle:   Padding(
                      padding: EdgeInsets.only(bottom:5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [                   
                          Text('tasks   1/10',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,fontFamily:'inter' ),),
                           SizedBox(height: 50,),
                           Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                             children: [
                              Container(
                                                         width: 60,
                                                         height: 60,
                                                         decoration: BoxDecoration(color: const Color.fromARGB(66, 58, 192, 250),
                                                         borderRadius: BorderRadius.circular(100)),
                                                       child: IconButton(onPressed: (){
                                                         Navigator.push(context, MaterialPageRoute(builder: (context){
                                return const NewTaskView();
                                                         }));
                                                       }, icon:Icon( Icons.delete_outline_rounded,color: Colors.white,size: 35,))),
                                                       Spacer(),
                               Container(
                                                         width: 60,
                                                         height: 60,
                                                         decoration: BoxDecoration(color: const Color.fromARGB(66, 58, 192, 250),
                                                         borderRadius: BorderRadius.circular(100)),
                                                       child: IconButton(onPressed: (){
                                                         Navigator.push(context, MaterialPageRoute(builder: (context){
                                return const NewTaskView();
                                                         }));
                                                       }, icon:Icon( Icons.add,color: Colors.white,size: 35,))),
                             ],
                           ),
                        ],
                      ),
                    ),
                   
                  ),
                  
                ]
                ),
             
          ),
      ),
      
    );
  }
}