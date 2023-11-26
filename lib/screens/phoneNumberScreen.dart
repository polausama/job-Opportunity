import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/customContainer/languageContainer.dart';
import 'package:flutter_graduation_app/widgets/customContainer/nophonecontainer.dart';
import 'package:flutter_graduation_app/widgets/switch/switchPhNo.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  String? country;

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
                  text: 'Phone number',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyText(
                  text: 'Main phone number',
                  color: Color(0xFF111827),
                  fontsize: 16,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            NoPhoneContainer(),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MySentence(
                  text: 'Use the phone number to reset your',
                ),
                SwitchPhNo(),
               
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 MySentence(
                      text: 'password',
                    ),
               ],
             ),
             SizedBox(height: MediaQuery.of(context).size.height*0.53,),
             RoundedButton(
              text: 'Save',
              ontap: () {
                
              },
             )
          
            
          ],
        ),
      )),
    );
  }
}
