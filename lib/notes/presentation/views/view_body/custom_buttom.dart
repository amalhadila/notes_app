import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key,this.onPressed,this.isloading=false});
  final void Function()? onPressed;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(

      style:ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff77d4fc),
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 11),
        fixedSize: Size(MediaQuery.of(context).size.width*.6,50),
        shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                  ),
      ),
      onPressed: onPressed,
      child: isloading? const CircularProgressIndicator(
        color: Colors.white,
      ): Text('add new project',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600,fontFamily:'inter' ),)
    );
  }
}