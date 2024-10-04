part of 'view_projects_cubit.dart';

@immutable
sealed class ViewProjectsState {}

final class ViewProjectsInitial extends ViewProjectsState {}
final class ViewProjectsuccess extends ViewProjectsState {
  final List<ProjectModel>? projectslist;

  ViewProjectsuccess({ this.projectslist});

}
