import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/customContainer/twoStepVerfication/twoStepVerfication4Container.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class TwoStepVeficationScreen4 extends StatefulWidget {
  const TwoStepVeficationScreen4({super.key});

  @override
  State<TwoStepVeficationScreen4> createState() =>
      _TwoStepVeficationScreen4State();
}

class _TwoStepVeficationScreen4State extends State<TwoStepVeficationScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Image.asset('assets/images/arrow-left.png'),
              MyText(
                text: 'Two-step verification',
                fontsize: 20,
                color: Color(0xFF111827),
              ),
              SizedBox(
                width: 40,
              ),
            ]),
            SizedBox(
              height: 40,
            ),
            MyText(
              text: 'Add phone number',
              color: Color(0xFF111827),
              fontsize: 16,
            ),
            SizedBox(
              height: 30,
            ),
            MySentence(
              text: 'Please confirm your account by entering the',
            ),
            SizedBox(
              height: 20,
            ),
            MySentence(
              text: 'authorization code sen to ****-****-7234',
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                twoStepVerfication4Container(
                  text: '2',
                ),
                twoStepVerfication4Container(
                  text: '4',
                ),
                twoStepVerfication4Container(
                  text: '1',
                ),
                twoStepVerfication4Container(
                  text: '',
                ),
                twoStepVerfication4Container(
                  text: '',
                ),
                twoStepVerfication4Container(
                  text: '',
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                MySentence(
                  text: 'Resend code ',
                ),
                Text(
                  ' 42s',
                  style: TextStyle(
                    color: Color(0xFF3366FF),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                    height: 0.08,
                    letterSpacing: 0.16,
                  ),
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.55,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundedButton(
                  text: 'Verify',
                  ontap: () {
                    
                  },
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
