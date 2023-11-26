import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class PortfolioContainer extends StatelessWidget {
  String?text;
  String?sentence;
   PortfolioContainer({this.text,this.sentence});

  @override
  Widget build(BuildContext context) {
    return Container(
width: 327,
height: 74,
padding: const EdgeInsets.all(16),
decoration: ShapeDecoration(
shape: RoundedRectangleBorder(
side: BorderSide(width: 1, color: Color(0xFFD1D5DB)),
borderRadius: BorderRadius.circular(8),
),
),
child: Row(
mainAxisSize: MainAxisSize.min,
mainAxisAlignment: MainAxisAlignment.spaceBetween,
crossAxisAlignment: CrossAxisAlignment.center,
children: [ 
  Image.asset('assets/images/Logopdf.png'),
  Column(
    children: [
      Padding(padding: EdgeInsets.only(top: 10)),
      MyText(
        text:text ,
        color: Color(0xFF111827),
        fontsize: 14,
      ),
      SizedBox(height: 20,),
      MySentence(
        text: sentence,
      )
    ],
  ),
  Icon(Icons.edit,color: Colors.blue,),
  Icon(Icons.cancel_rounded,color: Colors.red,)
                  ],
                ),
                );
  }
}