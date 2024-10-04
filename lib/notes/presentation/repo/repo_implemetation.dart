import 'package:hive/hive.dart';
import 'package:notes/notes/data/models/project_model.dart';
import 'package:notes/notes/presentation/repo/repo.dart';

class RepoImplemetation implements TasksRepo {
  add_project(ProjectModel project ) async{
   var project_box= Hive.box<ProjectModel>('project_box');
   await project_box.add(project);

  }
  @override
   List<ProjectModel> fetch_project() {
    var project_box=Hive.box<ProjectModel>('project_box');
    print('hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh $project_box.values.toList()');
    return project_box.values.toList();
      
  }
}