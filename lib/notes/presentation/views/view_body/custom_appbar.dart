import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key,required this.appbar_title, this.appicon,this.onPressed});
  final IconData? appicon;
  final String appbar_title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 30,),
         Text(appbar_title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,fontFamily:'inter' )),
        Spacer(),
        IconButton(onPressed: (){}, icon:  IconButton(
          onPressed: onPressed
          ,icon: Icon(appicon,size: 28)))
      ],
    );
  }
}