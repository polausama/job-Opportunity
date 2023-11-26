import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/switch/switchPhNo.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';

class TwoStepVeficationContainer extends StatelessWidget {
   TwoStepVeficationContainer();

  @override
  Widget build(BuildContext context) {
    return  Container(
width: 327,
height: 80,
padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
decoration: ShapeDecoration(
shape: RoundedRectangleBorder(
side: BorderSide(width: 1, color: Color(0xFFD1D5DB)),
borderRadius: BorderRadius.circular(8),
),
), 
child: Column(
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MySentence(
          text: 'ecure your account with',
        ),
        SwitchPhNo(
          status: false,
        )
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MySentence(
          text: 'two-step verification',
        ),
      ],
    )
  ],
),
              );
  }
}