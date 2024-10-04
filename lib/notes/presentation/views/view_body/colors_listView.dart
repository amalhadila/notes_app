import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/notes/presentation/manager/cubit/add_project_cubit.dart';
import 'package:notes/notes/presentation/views/view_body/colors_item.dart';

class ColorsListview extends StatefulWidget {
  const ColorsListview({super.key});

  @override
  State<ColorsListview> createState() => _ColorsListviewState();
}

class _ColorsListviewState extends State<ColorsListview> {
  int currentindex=0; 
  List<Color> colors= const[Color(0xff7695FF),Color(0xff9DBDFF),Color(0xffA67B5B),Color(0xff7AB2B2),
  Color(0xff7C93C3),Color(0xff55679C),Color(0xff1E2A5E),Color(0xffD7C0AE)]; 
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
         return   Padding(
           padding: const EdgeInsets.symmetric(horizontal: 8.0),
           child: GestureDetector(
            onTap:(){ currentindex=index;
            BlocProvider.of<AddProjectCubit>(context).color=colors[index];
            print(currentindex);
            setState(() {
              
            });
            },
             child: ColorsItem(projectcolor:colors[index] ,
             isChecked: currentindex==index,),
           ),
         );
        },
      ),
    );
  }
}