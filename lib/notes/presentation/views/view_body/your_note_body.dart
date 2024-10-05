import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/notes/presentation/manager/cubit/view_projects_cubit.dart';
import 'package:notes/notes/presentation/views/view_body/project_listview.dart';

class YourNoteBody extends StatelessWidget {
  const YourNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.0, right: 8, left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Hello',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                fontFamily: 'inter',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Your',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                fontFamily: 'inter',
              ),
            ),
          ),
          BlocBuilder<ViewProjectsCubit, ViewProjectsState>(
            builder: (context, state) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Projects(${BlocProvider.of<ViewProjectsCubit>(context).allprojects!.length})',
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'inter',
                  ),
                ),
              );
            },
          ),
          SizedBox(height: 20),
          BlocBuilder<ViewProjectsCubit, ViewProjectsState>(
            builder: (context, state) {
              if (BlocProvider.of<ViewProjectsCubit>(context).allprojects!.isNotEmpty){
              return const Expanded(
                child:   ProjectListview(),
                );
                }
              else{
                return Expanded(
                  child: Column(
                      mainAxisAlignment:  MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height*.3,
                            width:  MediaQuery.of(context).size.width*.6,
                            child: Image.asset('assets/Add notes.gif',fit: BoxFit.fill,),
                          ),
                          
                        ),
                        SizedBox(height: 90),
                      ],
                    
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
