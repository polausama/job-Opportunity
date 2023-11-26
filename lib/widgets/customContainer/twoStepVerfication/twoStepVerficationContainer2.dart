import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';

class TwoStepVerficationContainer2 extends StatelessWidget {
  String?text1;
    String?text2;
  String?text3;
  String?imageurl;

   TwoStepVerficationContainer2({this.text1,this.text2,this.text3,this.imageurl});

  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                        image: AssetImage(imageurl!)),
                    color: Color(0xFFD6E4FF),
                    shape: OvalBorder(),
                  ),
                ),
                Column(
                  children: [
                    MySentence(
                      text: text1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MySentence(
                      text: text2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MySentence(
                      text: text3,
                    ),
                  ],
                )
              ],
            );
  }
}