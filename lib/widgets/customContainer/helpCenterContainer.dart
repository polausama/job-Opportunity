import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class HelpCenterContainer extends StatelessWidget {
  const HelpCenterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
width: 400,
height: 53,
padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
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
  MyText(
    text: 'Lorem ipsum dolor sit amet',
    color: Color(0xFF111827),
    fontsize: 16,
  ),
  Image.asset('assets/images/arrow-down.png')
      ]),
    );
  }
}