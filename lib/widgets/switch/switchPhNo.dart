import 'package:flutter/material.dart';

class SwitchPhNo extends StatefulWidget {
  bool status;
   SwitchPhNo({this.status = true});

  @override
  State<SwitchPhNo> createState() => _SwitchPhNoState();
}

class _SwitchPhNoState extends State<SwitchPhNo> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      
      value: widget.status, 
      onChanged: (val) {
        setState(() {
          widget.status = val;
        });
      },);
  }
}