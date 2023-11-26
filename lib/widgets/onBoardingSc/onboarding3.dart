import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class  OnBoarding3 extends StatelessWidget {
  const  OnBoarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container
        (width:400 ,
        height: 400,
          child: Image.asset("assets/images/image(9).png",fit: BoxFit.cover,)),
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
                  text: 'Get the best',
                  color: Color(0xFF111827),
                  fontsize: 32,
                ),
                MyText(
                  text: ' choice for',
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
                  text: ' the job',
                  color: Color(0xFF3366FF),
                  fontsize: 32,
                ),
                MyText(
                  text: '  you ve always ',
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
                  text: ' dreamed of',
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
                text:  "The better the skills you have, the greater the  ",
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
                  text: 'good job opportunities for you..',
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
