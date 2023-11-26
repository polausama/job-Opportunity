import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 400,
            height: 400,
            child: Image.asset(
              "assets/images/image(8).png",
              fit: BoxFit.cover,
            )),
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
                  text: 'Hundreds of jobs are',
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
               MyText(
                  text: 'waiting for you to',
                  color: Color(0xFF111827),
                  fontsize: 32,
                ),
                MyText(
                  text: ' join ',
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
                  text: ' together',
                  color: Color(0xFF3366FF),
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
                  text: "Immediately join us and start applying for the ",
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
                  text: 'job you are interested in. .',
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
