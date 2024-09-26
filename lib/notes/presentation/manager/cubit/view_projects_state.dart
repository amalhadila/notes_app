part of 'view_projects_cubit.dart';

@immutable
sealed class ViewProjectsState {}

final class ViewProjectsInitial extends ViewProjectsState {}
final class ViewProjectloading extends ViewProjectsState {}
final class ViewProjectsuccess extends ViewProjectsState {}
final class ViewProjectfailure extends ViewProjectsState {
  final String? errormassage;

  ViewProjectfailure({ this.errormassage});
}