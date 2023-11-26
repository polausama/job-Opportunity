import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class DatetimeTextField extends StatelessWidget {
  Widget ?suffixicon;
      final format = DateFormat('MMMM yyyy');

   DatetimeTextField({this.suffixicon});

  @override
  Widget build(BuildContext context) {
    return DateTimeField(
          decoration: InputDecoration(
             suffixIcon: suffixicon,
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),borderSide: BorderSide( color: Color(0xFFD1D5DB))
                 ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),borderSide: BorderSide( color: Color(0xFFD1D5DB))
                  ),
          ),
            format: format, 
            onShowPicker: (context, currentValue) async{
              final date = await showDatePicker(context: context,
               initialDate: DateTime.now(),
                firstDate: DateTime(1900), 
                lastDate: DateTime.now());
                return date;
            },);
  }
}