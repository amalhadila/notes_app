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
    late AnimationController animationController;
  late Animation sizeAnimation;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(decoration: BoxDecoration(color: Colors.white),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[ TweenAnimationBuilder(
            curve: Curves.bounceIn,
        duration: Duration(seconds: 3),
        tween: SizeTween(begin:Size(MediaQuery.of(context).size.width*.33,MediaQuery.of(context).size.height*.15) ,end:Size(MediaQuery.of(context).size.width*.48,MediaQuery.of(context).size.height*.23)),
        builder: (context, value, child) =>
             Image.asset('assets/taskify-high-resolution-logo-transparent.png',width: value!.width,
                height: value.height,fit: BoxFit.fill),
          ),]
        )),
      
    );
  }
}