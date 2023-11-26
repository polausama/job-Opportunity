import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/buttons/socialMButton.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';
import 'package:flutter_graduation_app/widgets/textField/textFieldPass.dart';
import 'package:flutter_graduation_app/widgets/textField/textFieldUser.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Form(
          child: SingleChildScrollView(
              child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Image.asset("assets/images/Logo(1).png"),
              )
            ],
          ),
        ),
        SizedBox(
          height: 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: MyText(
                  text: 'Cereate Account',
                  color: Color(0xFF111827),
                  fontsize: 28,
                ))
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: MySentence(
                  text: 'Please create an account to find your dream job',
                )),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Custom_Text_Field(
            hintName: 'user name', icon: Icons.person, validator: (value) {}),
        SizedBox(
          height: 30,
        ),
        Custom_Text_Field(
            hintName: 'email', icon: Icons.email, validator: (value) {}),
        SizedBox(
          height: 30,
        ),
        Custom_TextField_password(
            hintName: 'password',
            icon: Icons.lock,
            suffixIcon: Icon(Icons.visibility_off),
            validator: (value) {},
            onchange: (value) {
              setState(() {
                if (value.length < 8) {
                  color = Colors.red;
                } else {
                  color = Colors.green;
                }
              });
            },
            ispass: true),
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
        SizedBox(
          height: 150,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account?',
              style: TextStyle(
                color: Color(0xFF9CA3AF),
                fontSize: 14,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
                height: 0.10,
                letterSpacing: 0.14,
              ),
            ),
            SizedBox(
              width: 15,
            ),
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
        SizedBox(
          height: 20,
        ),
        RoundedButton(
          text: 'Create account',
          ontap: () {},
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  thickness: 0.5,
                  color: Color(0xFF6B7280),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Or Login With Account',
                style: TextStyle(color: Color(0xFF6B7280)),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  thickness: 0.5,
                  color: Color(0xFF6B7280),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SocialMediaButton(
              url: 'assets/images/Button.png',
            ),
            SocialMediaButton(
              url: 'assets/images/Button(1).png',
            ),
          ],
        )
      ]))),
    ));
  }
}
