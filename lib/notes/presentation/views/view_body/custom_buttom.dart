import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key,this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(

      style:ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 88, 170, 238),
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 11),
        shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                  ),
      ),
      onPressed: onPressed,
      child: const Text('add new project',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600,fontFamily:'inter' ),)
    );
  }
}