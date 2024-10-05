import 'package:flutter/material.dart';
import 'package:notes/notes/presentation/views/your_notes_view.dart';

class SplahViewBody extends StatefulWidget {
  const SplahViewBody({super.key});

  @override
  State<SplahViewBody> createState() => _SplahViewBodyState();
}

class _SplahViewBodyState extends State<SplahViewBody> {
  @override
  void initState() {
    Future.delayed(Duration(seconds:3),(){
      Navigator.push(context, MaterialPageRoute(builder:(context) => const YournotesView()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(decoration: BoxDecoration(color: Colors.white),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[ Image.asset('assets/تصميم بدون عنوان.gif',width: MediaQuery.of(context).size.width*.49,
              height: MediaQuery.of(context).size.height*.235,fit: BoxFit.fill),]
        )),
      
    );
  }
}