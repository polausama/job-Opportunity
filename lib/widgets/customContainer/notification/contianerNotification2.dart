import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class NotificationContainer_two extends StatelessWidget {
  String?imageurl;
  String?text;
  String?sentence;
  String?sentence2;
 

   NotificationContainer_two({this.text,this.sentence,this.imageurl,this.sentence2,});

  @override
  Widget build(BuildContext context) {
    return   Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
width: 40,
height: 40,
decoration: ShapeDecoration(
  image: DecorationImage(image: AssetImage(imageurl!)),
color: Color(0xFFD6E4FF),
shape: OvalBorder(),
),
) ,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                      fontsize: 12,
                    ),
                    SizedBox(height: 20,),
                    MySentence(
                      text: sentence2,
                      fontsize: 12,
                    ),
                     SizedBox(height: 20,),
                   

                  ],
                ),
                SizedBox(
                  width: 40,
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