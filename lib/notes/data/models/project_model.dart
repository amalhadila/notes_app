import 'package:hive/hive.dart';
part 'project_model.g.dart';

@HiveType(typeId: 0)
class ProjectModel extends HiveObject{
  @HiveField(0)
  final String project_title;
  @HiveField(1)
  final String? content;
  @HiveField(2)
  final String? date;
  @HiveField(3)
   int color;
  @HiveField(4)
    List<taskModel>? taskmodel;

  ProjectModel({this.taskmodel, required this.project_title,  this.content,  this.date, required this.color});
  
}

@HiveType(typeId: 1)  
class taskModel {
  @HiveField(0)
   String task_title;
  @HiveField(1)
   bool status;
  @HiveField(2)
  final String? date;
  @HiveField(3)
  final int? color;

  taskModel({required this.task_title,  this.status=false,  this.date,  this.color});
  
}