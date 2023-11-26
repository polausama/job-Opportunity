import 'package:flutter/material.dart';

class ListViewContainer extends StatelessWidget {
  String?text;
  IconData?icon;
  IconData? icon2;
   ListViewContainer({
     this.text,this.icon,this.icon2,
   });

  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                  Icon(icon),
                  SizedBox(width: 20,),
                  Text(
                    text??'unknown',
                    style: TextStyle(
                      color: Color(0xFF111827),
                      fontSize: 14,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      height: 0.10,
                      letterSpacing: 0.14,
                    ),
                  ),
                  Expanded(
                    child: Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(icon2,color: Colors.red,),
                      ],
                    ),
                  )
                ],
              );
  }
}