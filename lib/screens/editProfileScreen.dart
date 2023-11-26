import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/customContainer/nophonecontainer.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';
import 'package:flutter_graduation_app/widgets/textField/editprofiletextfield.dart';

class EditProfileScreen extends StatefulWidget {
  EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
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
                  text: 'Edite Profile',
                  fontsize: 20,
                  color: Color(0xFF111827),
                ),
                SizedBox(
                  width: 40,
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Stack(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Profile.png'),
                  radius: 50,
                ),
                Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.04,
                    left: MediaQuery.of(context).size.width * 0.07,
                    child: Image.asset(
                      'assets/images/camera.png',
                      color: Colors.white70,
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Change Photo',
              style: TextStyle(
                color: Color(0xFF3366FF),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
                height: 0.08,
                letterSpacing: 0.16,
              ),
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MySentence(
                  text: 'Name',
                )
              ],
            ),
            SizedBox(height: 20,),
            EditProfileTextField(),
            SizedBox(height: 35,),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MySentence(
                  text: 'Bio',
                )
              ],
            ),
            SizedBox(height: 20,),
            EditProfileTextField(),
             SizedBox(height: 35,),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MySentence(
                  text: 'Address',
                )
              ],
            ),
            SizedBox(height: 20,),
            EditProfileTextField(),
             SizedBox(height: 35,),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MySentence(
                  text: 'No.Handphone',
                )
              ],
            ),
            SizedBox(height: 20,),
            NoPhoneContainer(),
                        SizedBox(height: 20,),
RoundedButton(
  text: 'Save',
  ontap: () {
    
  },
)
          ],
        ),
      )
      ),
    );
  }
}
