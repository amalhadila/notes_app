import 'package:flutter/material.dart';

class TaskListviewItem extends StatelessWidget {
   TaskListviewItem({super.key, required this.task_name});
   String task_name;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom:8.0),
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
                subtitle:  Padding(
                  padding: const EdgeInsets.only(bottom:30.0),
                  child: Row(
                    children: [                   
                     // IconButton(onPressed: (){}, icon:Icon( Icons.charging_station_rounded,color: Colors.white,)),
                      const Text('tasks   ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,fontFamily:'inter' ),),
                      const Text('1/10',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,fontFamily:'inter' ),),
                    ],
                  ),
                ),
                trailing: Container(
                  decoration: BoxDecoration(color: const Color.fromARGB(59, 255, 255, 255),
                  borderRadius: BorderRadius.circular(100)),
                child: IconButton(onPressed: (){}, icon:Icon( Icons.add,color: Colors.white,))),
              ),
            ],
          ),
        ),
      
    );
  }
}