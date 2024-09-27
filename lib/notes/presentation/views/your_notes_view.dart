import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/notes/presentation/manager/cubit/add_project_cubit.dart';
import 'package:notes/notes/presentation/repo/repo_implemetation.dart';
import 'package:notes/notes/presentation/views/view_body/add_button_sheet.dart';
import 'package:notes/notes/presentation/views/view_body/your_note_body.dart';

class YourNotesView extends StatelessWidget {
  const YourNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
          create: (context) => AddProjectCubit(RepoImplemetation()),
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const AddButtonSheet();
                },
              );
            },
            child: const Icon(Icons.add),
          ),
          body: const YourNoteBody()),
    );
  }
}
