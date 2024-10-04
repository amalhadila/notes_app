import 'package:flutter/material.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key, required this.projectcolor, required this.isChecked});
  final Color  projectcolor;
  final bool isChecked;
  @override
  Widget build(BuildContext context) {
    return isChecked? Container(
       width: 70,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
      
        ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
       
          decoration: BoxDecoration(
            color: projectcolor,
            borderRadius: BorderRadius.circular(13),
        
          ),
        ),
      ),
    ): 
    Container(
      width: 70,
      height: 60,
      decoration: BoxDecoration(
        color: projectcolor,
        borderRadius: BorderRadius.circular(13),

      ),
    );
  }
}