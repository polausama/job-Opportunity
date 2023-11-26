import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';
import 'package:flutter_graduation_app/widgets/textField/editprofiletextfield.dart';

class EmailAddressScreen extends StatefulWidget {
  const EmailAddressScreen({super.key});

  @override
  State<EmailAddressScreen> createState() => _EmailAddressScreenState();
}

class _EmailAddressScreenState extends State<EmailAddressScreen> {
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
                  text: 'Email address',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyText(
                  text: 'Main e-mail address',
                  color: Color(0xFF111827) ,
                  fontsize: 16,
                ),
              ],
            ),
            SizedBox(height: 20,),
            EditProfileTextField(
              prefixicons: Icon(Icons.email_outlined),


            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.65,),
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
