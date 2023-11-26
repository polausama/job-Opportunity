import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container
        (width:600 ,
        height: 400,
          child: Image.asset("assets/images/Background.png",fit: BoxFit.cover,)),
        SizedBox(
          height: 40,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40,
                ),
                MyText(
                  text: 'Find a job, and',
                  color: Color(0xFF111827),
                  fontsize: 32,
                ),
                MyText(
                  text: ' start',
                  color: Color(0xFF3366FF),
                  fontsize: 32,
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40,
                ),
                MyText(
                  text: ' building',
                  color: Color(0xFF3366FF),
                  fontsize: 32,
                ),
                MyText(
                  text: ' your career ',
                  color: Color(0xFF111827),
                  fontsize: 32,
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40,
                ),
                MyText(
                  text: ' from now on',
                  color: Color(0xFF111827),
                  fontsize: 32,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40,
                ),
               MySentence(
                text:  "Explore over 25,924 available job roles and ",
                
               )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40,
                ),
                MySentence(
                  text: 'upgrade your operator now.',
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
