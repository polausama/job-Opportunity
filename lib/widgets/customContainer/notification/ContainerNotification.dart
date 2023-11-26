import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class NotificationContainer extends StatelessWidget {
  String?imageurl;
  String?text;
  String?sentence;
  

   NotificationContainer({this.text,this.sentence,this.imageurl});

  @override
  Widget build(BuildContext context) {
    return   Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(imageurl!),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: text,
                      color: Colors.black,
                      fontsize: 14,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MySentence(
                      text: sentence,
                    ),
                    SizedBox(height: 20,),
                  

                  ],
                ),
                SizedBox(
                  width: 60,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: ShapeDecoration(
                            color: Color(0xFFDBB40E),
                            shape: OvalBorder(),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '10.00AM',
                          style: TextStyle(
                            color: Color(0xFF6B7280),
                            fontSize: 12,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0.12,
                            letterSpacing: 0.12,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ],
            );
  }
}