import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class jobDetailProfileContainer extends StatelessWidget {
  String?text;
  String?sentence;
  String?imageurl;
  String?sentence2;
  String?yeartext;

   jobDetailProfileContainer({this.text,this.imageurl,this.sentence,this.sentence2,this.yeartext});

  @override
  Widget build(BuildContext context) {
    return  Row(
            children: [
              Image.asset(imageurl!),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text:text ,
                    color: Colors.black,
                    fontsize: 14,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MySentence(
                    text: sentence,
                  )
                ],
              ),
              SizedBox(width: 50,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MySentence(
                    text: sentence2,
                  ),
                  SizedBox(height: 30,),
                  Text(
                    yeartext!,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF3366FF),
                      fontSize: 12,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      height: 0.12,
                      letterSpacing: 0.12,
                    ),
                  )
                ],
              )
            ],
          );
  }
}