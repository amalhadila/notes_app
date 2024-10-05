import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/notes/data/models/project_model.dart';
import 'package:notes/notes/presentation/manager/cubit/view_projects_cubit.dart';
import 'package:notes/notes/presentation/repo/repo_implemetation.dart';
import 'package:notes/notes/presentation/views/your_notes_view.dart';
import 'package:notes/splash/presentation/views/splah_view.dart';
import 'notes/presentation/manager/simple_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ProjectModelAdapter());
  Hive.registerAdapter(taskModelAdapter());

  await Hive.openBox<ProjectModel>('project_box');
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
          create: (context) => ViewProjectsCubit(RepoImplemetation())..fetch_all_projects(),
      child: MaterialApp(
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor:Colors.white),
        home: SplahView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
