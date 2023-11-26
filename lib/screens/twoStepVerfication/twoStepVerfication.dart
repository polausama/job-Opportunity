import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/customContainer/twoStepVerfication/twoStepVerfication.dart';
import 'package:flutter_graduation_app/widgets/customContainer/twoStepVerfication/twoStepVerficationContainer2.dart';
import 'package:flutter_graduation_app/widgets/switch/switchPhNo.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class TwoStepVerficatioScreen extends StatefulWidget {
  const TwoStepVerficatioScreen({super.key});

  @override
  State<TwoStepVerficatioScreen> createState() =>
      _TwoStepVerficatioScreenState();
}

class _TwoStepVerficatioScreenState extends State<TwoStepVerficatioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/arrow-left.png'),
                MyText(
                  text: 'Two-step verification',
                  fontsize: 20,
                  color: Color(0xFF111827),
                ),
                SizedBox(
                  width: 40,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            TwoStepVeficationContainer(),
            SizedBox(
              height: 40,
            ),
           TwoStepVerficationContainer2(
            imageurl: 'assets/images/lock.png',
            text1: 'Two-step verification provides additional ',
            text2: 'security by asking for a verification code ',
            text3: 'every time you log in on another device',
           ),
           SizedBox(height: 40,),
           TwoStepVerficationContainer2(
            imageurl: 'assets/images/external-drive.png',
            text1: 'Adding a phone number or using an  ',
            text2: 'authenticator will help keep your account ',
            text3: 'safe from harm.',
           ),
           SizedBox(height: MediaQuery.of(context).size.height*0.45,),
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
