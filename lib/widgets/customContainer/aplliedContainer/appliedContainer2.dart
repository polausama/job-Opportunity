import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class AppliedContainer_two extends StatelessWidget {
  String?text;
  String?sentence;
  Widget?child;
  
   AppliedContainer_two({this.text,this.child,this.sentence});

  @override
  Widget build(BuildContext context) {
    return  Container(
width: 327,
height: 100,
padding: const EdgeInsets.all(16),
decoration: ShapeDecoration(
shape: RoundedRectangleBorder(
side: BorderSide(width: 1, color: Color(0xFFD1D5DB)),
borderRadius: BorderRadius.circular(8),
),
), 
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(padding: EdgeInsets.only(top: 10)),
    MyText(
      text: text,
      color: Colors.black,
      fontsize: 16,
    ),
    Row(mainAxisAlignment: MainAxisAlignment.end,
      children: [

 
  child!

      ],
    ),
    MySentence(
    text: sentence,
  )
  ],
),
          );
  }
}