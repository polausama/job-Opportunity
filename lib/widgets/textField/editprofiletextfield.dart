import 'package:flutter/material.dart';

class EditProfileTextField extends StatelessWidget {
  Widget?prefixicons;
  Widget?suffixicon;
  bool obscuretext;
   EditProfileTextField({this.prefixicons,this.suffixicon,this.obscuretext = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:obscuretext ,
              decoration: InputDecoration(
                
                prefixIcon: prefixicons,
                suffixIcon: suffixicon,
               border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),borderSide: BorderSide( color: Color(0xFFD1D5DB))
               ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),borderSide: BorderSide( color: Color(0xFFD1D5DB))
                ),
              ),
            );
  }
}