import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'delete_project_state.dart';

class DeleteProjectCubit extends Cubit<DeleteProjectState> {
  DeleteProjectCubit() : super(DeleteProjectInitial());
}
