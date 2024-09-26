import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxlins =1,this.onsaved});
  final String hintText;
  final int maxlins;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
        onSaved: onsaved,
        validator: (value) {
          if(value?.isEmpty ?? true){
            return 'Field is required';
          }
        },
        cursorColor: const Color.fromARGB(255, 88, 170, 238),
        maxLines: maxlins,
        decoration: InputDecoration(
          hintText: hintText,
          border: buildborder(),
          enabledBorder: buildborder(),
          focusedBorder: buildborder(const Color.fromARGB(255, 88, 170, 238))

        ),
     
    );
  }

  OutlineInputBorder buildborder([color]) {
    return  OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(22)),
          borderSide: BorderSide(color: color?? const Color.fromARGB(255, 189, 186, 186))
        );
  }
}