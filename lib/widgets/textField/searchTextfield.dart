import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/screens/search/searchScreen.dart';

class SearchTextField extends StatelessWidget {
  Function(String)? onchange;
  Function ()? ontap;
  String? hinttext;
   SearchTextField({this.onchange,this.ontap,this.hinttext});

  @override
  Widget build(BuildContext context) {
    return 
    TextFormField(
      onTap: ontap,
        onChanged: onchange,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          hintText: hinttext,
          hintStyle: TextStyle(
              color: Color(0xFF9CA3AF),
              fontSize: 14,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              height: 0.10,
              letterSpacing: 0.30),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
            borderSide: BorderSide(color: Color(0xFFD1D5DB)),
          ),
          focusedBorder: OutlineInputBorder(
            
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
            borderSide: BorderSide(color: Color(0xFFD1D5DB)),
          ),
        ));
  }
}
