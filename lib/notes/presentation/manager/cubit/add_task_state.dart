part of 'add_task_cubit.dart';

@immutable
sealed class AddTaskState {}

final class AddTaskInitial extends AddTaskState {}
final class AddTaskloading extends AddTaskState {}
final class AddTasksuccess extends AddTaskState {}
final class AddTaskfailure extends AddTaskState {
  final String? errormassage;

  AddTaskfailure({ this.errormassage});
}