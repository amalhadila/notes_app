import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:notes/notes/data/models/project_model.dart';
import 'package:notes/notes/presentation/repo/repo.dart';
import 'package:meta/meta.dart';
part 'add_project_state.dart';

class AddProjectCubit extends Cubit<AddProjectState> {
  AddProjectCubit(this.tasksRepo) : super(AddProjectInitial());
  final TasksRepo tasksRepo;
  Color color=const Color(0xff7695FF);
  void add_project(ProjectModel project_model ) async{
    project_model.color=color.value;
    emit(AddProjectloading());
    try{
     await tasksRepo.add_project(project_model);
     emit(AddProjectsuccess());
    }catch(failure){
     emit(AddProjectfailure(failure.toString()));
     print(failure);
    }

  }

}
