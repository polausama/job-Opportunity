import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/customContainer/nophonecontainer.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';
import 'package:flutter_graduation_app/widgets/textField/editprofiletextfield.dart';

class TwoStepVeficationScreen3 extends StatefulWidget {
  const TwoStepVeficationScreen3({super.key});

  @override
  State<TwoStepVeficationScreen3> createState() => _TwoStepVeficationScreen3State();
}

class _TwoStepVeficationScreen3State extends State<TwoStepVeficationScreen3> {
  bool hidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
            ]
            ),
            SizedBox(height: 40,),
            MyText(
              text: 'Add phone number',
              color: Color(0xFF111827),
              fontsize: 16,
            ),
            SizedBox(height: 30,),
            MySentence(
              text: 'We will send a verification code to this number',
            ),
            SizedBox(height: 30,),
            NoPhoneContainer(),
            SizedBox(height: 30,),
            MyText(
              text:'Enter your password' ,
              color:Color(0xFF111827) ,
              fontsize:16 ,
            ),
            SizedBox(height: 20,),
             EditProfileTextField(
                obscuretext: hidden,
                prefixicons:Icon(Icons.lock) ,
                suffixicon:IconButton(
                  onPressed: () {
                    setState(() {
                      hidden = !hidden!;
                    });
                  }, 
                  icon: hidden!?Icon(Icons.visibility_off): Icon(Icons.visibility)) ,
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.45,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundedButton(
                    text:'Send Code' ,
                    ontap: () {
                      
                    },
                  ),
                ],
              )

            ],
          ),
        )
        ),
    );
  }
}