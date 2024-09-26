import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/notes/data/models/project_model.dart';
import 'package:notes/notes/presentation/views/your_notes_view.dart';

import 'notes/presentation/manager/simple_bloc_observer.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox('project_box');
  Hive.registerAdapter(ProjectModelAdapter());
  Bloc.observer=SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: YourNotesView(),
      debugShowCheckedModeBanner: false,);
       
  }
}
