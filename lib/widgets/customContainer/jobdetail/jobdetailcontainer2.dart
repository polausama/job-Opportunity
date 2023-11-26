import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class JobDetailContainer_two extends StatelessWidget {
  String?text;
  String?sentence;
   JobDetailContainer_two({this.sentence,this.text});

  @override
  Widget build(BuildContext context) {
    return   Container(
                width: 157,
                height: 56,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFE5E7EB)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MySentence(
                      text: sentence,
                      fontsize: 12,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MyText(
                      text: text,
                      color: Colors.black,
                      fontsize: 14,
                    )
                  ],
                ),
              );
  }
}