import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'view_projects_state.dart';

class ViewProjectsCubit extends Cubit<ViewProjectsState> {
  ViewProjectsCubit() : super(ViewProjectsInitial());
}
