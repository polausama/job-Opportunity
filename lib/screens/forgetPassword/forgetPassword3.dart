import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';
import 'package:flutter_graduation_app/widgets/textField/editprofiletextfield.dart';
import 'package:flutter_graduation_app/widgets/textField/textFieldPass.dart';

class ForgetPasswordScreen_three extends StatefulWidget {
  const ForgetPasswordScreen_three({super.key});

  @override
  State<ForgetPasswordScreen_three> createState() => _ForgetPasswordScreen_threeState();
}

class _ForgetPasswordScreen_threeState extends State<ForgetPasswordScreen_three> {
    Color? color;
    bool hidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/arrow-left.png'),
                      Image.asset('assets/images/Logo(1).png'),
                    ],
                  ),
                ),
                SizedBox(height: 60,),
                MyText(text: 'Create new password',
                color: Colors.black,
                fontsize: 28,),
                SizedBox(height: 40,),
                MySentence(
                  text: 'Set your new password so you can login and ',
                ),
                SizedBox(height: 20,),
                MySentence(
                  text: 'acces Jobsque',
                ),
                SizedBox(height: 80,),
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
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Password must be at least 8 characters',
                  style: TextStyle(
                    color: color,
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                    letterSpacing: 0.16,
                  ),
                )),
          ],
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
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Both password must match',
                  style: TextStyle(
                    color: color,
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                    letterSpacing: 0.16,
                  ),
                )),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.33,),
        Center(
          child: RoundedButton(
            text: 'Reset password',
            ontap: () {
              
            },
          ),
        )
            ],
          ),
        )),
    );
  }
}