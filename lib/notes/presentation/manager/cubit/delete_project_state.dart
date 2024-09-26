part of 'delete_project_cubit.dart';

@immutable
sealed class DeleteProjectState {}

final class DeleteProjectInitial extends DeleteProjectState {}
final class DeleteProjectloading extends DeleteProjectState {}
final class DeleteProjectsuccess extends DeleteProjectState {}
final class DeleteProjectfailure extends DeleteProjectState {
  final String? errormassage;

  DeleteProjectfailure({ this.errormassage});
}