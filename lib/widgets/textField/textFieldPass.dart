import 'package:flutter/material.dart';

class Custom_TextField_password extends StatelessWidget {
  String? hintName;

  IconData? icon;
  final bool ispass;
  final void Function(String? value)? saved;
  final String? Function(String?) validator;
  final Widget? suffixIcon;
  final Function(String)? onchange;

  Custom_TextField_password(
      {this.hintName,
      this.icon,
      this.saved,
      required this.validator,
      required this.ispass,
      this.suffixIcon,
      this.onchange});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        obscureText: ispass,
        onSaved: saved,
        validator: validator,
        onChanged:onchange ,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Color(0xFFD1D5DB)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Color(0xFF3366FF)),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Colors.red),
            ),
            prefixIcon: Icon(icon,color:  Color(0xFF9CA3AF),),
            hintText: hintName,hintStyle: TextStyle(color: Color(0xFF9CA3AF) ),
            fillColor: Colors.white,
            filled: true,
            suffixIcon: suffixIcon),
      ),
    );
  }
}
