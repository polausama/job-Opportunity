import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';
import 'package:flutter_graduation_app/widgets/textField/textFieldUser.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
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
              SizedBox(
                height: 50,
              ),
              MyText(
                text: 'Reset Password',
                color: Colors.black,
                fontsize: 28,
              ),
              SizedBox(
                height: 40,
              ),
              MySentence(
                text: 'Enter the email address you used when you',
              ),
              SizedBox(
                height: 20,
              ),
              MySentence(
                text: 'joined and we’ll send you instructions to reset ',
              ),
              SizedBox(
                height: 20,
              ),
              MySentence(
                text: 'your password.',
              ),
              SizedBox(
                height: 60,
              ),
              Custom_Text_Field(
                hintName: 'Enter Your Emial',
                icon: Icons.email,
                validator: (value) {},
                saved: (value) {},
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(height:MediaQuery.of(context).size.height*0.45 ,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MySentence(
                    text: 'You remember your password',
                  ),
                  SizedBox(width: 10,),
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Color(0xFF3366FF),
                      fontSize: 14,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      height: 0.10,
                      letterSpacing: 0.14,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Center(
                child: RoundedButton(
                  text: 'Request password reset',
                  ontap: () {
                    
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
