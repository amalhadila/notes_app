import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key,required this.appbar_title, this.appicon});
  final IconData? appicon;
  final String appbar_title;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 30,),
         Text(appbar_title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,fontFamily:'inter' )),
        Spacer(),
        IconButton(onPressed: (){}, icon:  Icon(appicon,size: 28,))
      ],
    );
  }
}