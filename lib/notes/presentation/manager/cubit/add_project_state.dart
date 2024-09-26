part of 'add_project_cubit.dart';

@immutable
sealed class AddProjectState {}

final class AddProjectInitial extends AddProjectState {}
final class AddProjectloading extends AddProjectState {}
final class AddProjectsuccess extends AddProjectState {}
final class AddProjectfailure extends AddProjectState {
  final String errormassage;

  AddProjectfailure( this.errormassage);
}

