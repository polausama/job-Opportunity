import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/customContainer/twoStepVerfication/twoStepVerfication.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class TwoStepVeficationScreen2 extends StatefulWidget {
  const TwoStepVeficationScreen2({super.key});

  @override
  State<TwoStepVeficationScreen2> createState() =>
      _TwoStepVeficationScreen2State();
}

class _TwoStepVeficationScreen2State extends State<TwoStepVeficationScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Column(
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
            TwoStepVeficationContainer(),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyText(
                  text: 'Select a verification method',
                  color: Color(0xFF111827),
                  fontsize: 16,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 327,
              height: 56,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFD1D5DB)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                MySentence(
                  text: 'Note : Turning this feature will sign you out anywhere ',
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
               children: [
                MySentence(
                  text: 'you’re currently signed in. We will then require you to',
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
               children: [
                MySentence(
                  text: 'enter a verification code the first time you sign with a ',
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
               children: [
                MySentence(
                  text: 'new device or Joby mobile application.',
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.38,),
            RoundedButton(
              text: 'Next',
              ontap: () {
                
              },
            )

          ],
        ),
      )),
    );
  }
}
