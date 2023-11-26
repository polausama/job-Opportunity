import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/buttons/socialMButton.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';
import 'package:flutter_graduation_app/widgets/textField/textFieldPass.dart';
import 'package:flutter_graduation_app/widgets/textField/textFieldUser.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                text: 'Login',
                color: Color(0xFF111827),
                fontsize:28 ,
              )
            )
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
                  text: 'Please login to find your dream job',
                )
                ),
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
        Custom_TextField_password(
            hintName: 'password',
            icon: Icons.lock,
            suffixIcon: Icon(Icons.visibility_off),
            validator: (value) {},
            ispass: true),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Checkbox(value: false, onChanged: (value) {}),
            Text(
              'Remember me',
              style: TextStyle(
                color: Color(0xFF1F2937),
                fontSize: 14,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                height: 0,
                letterSpacing: 0.14,
              ),
            ),
            SizedBox(
              width: 200,
            ),
            Text(
              'Forgot Password?',
              style: TextStyle(
                color: Color(0xFF3366FF),
                fontSize: 14,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                height: 0,
                letterSpacing: 0.14,
              ),
            )
          ],
        ),
        SizedBox(
          height: 200,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dont’t have an account?',
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
              'Register',
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
          text: 'Login',
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
