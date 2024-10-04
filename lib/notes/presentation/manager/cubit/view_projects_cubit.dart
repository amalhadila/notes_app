import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes/notes/data/models/project_model.dart';
import 'package:notes/notes/presentation/repo/repo.dart';

part 'view_projects_state.dart';

class ViewProjectsCubit extends Cubit<ViewProjectsState> {
  ViewProjectsCubit(this.project_repo) : super(ViewProjectsInitial());
  final TasksRepo project_repo;
     List<ProjectModel>? allprojects;
  fetch_all_projects(){
   allprojects = project_repo.fetch_project();
    print('Fetched projects: $allprojects');
    emit(ViewProjectsuccess());
  }
}
