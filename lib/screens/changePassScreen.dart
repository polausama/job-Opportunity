import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';
import 'package:flutter_graduation_app/widgets/textField/editprofiletextfield.dart';

class ChangePassScreen extends StatefulWidget {
  const ChangePassScreen({super.key});

  @override
  State<ChangePassScreen> createState() => _ChangePassScreenState();
}

class _ChangePassScreenState extends State<ChangePassScreen> {
  bool hidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: 
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 30),
          child: Column(
            children: [
              Row(
            
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/arrow-left.png'),
                  MyText(
                    text: 'Change password',
                    fontsize: 20,
                    color: Color(0xFF111827),
                  ),
                  SizedBox(
                    width: 40,
                  )
                ],
              ),
              SizedBox(height: 60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText(
                    text: 'Enter your old password',
                    color: Color(0xFF111827),
                    fontsize: 16,
                  ),
                  SizedBox(height: 20,)
                ],
              ),
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
              SizedBox(height: 40,),
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText(
                    text: 'Enter your new password',
                    color: Color(0xFF111827),
                    fontsize: 16,
                  ),
                  SizedBox(height: 20,)
                ],
              ),
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
              SizedBox(height: 40,),
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText(
                    text: 'Confirm your new password',
                    color: Color(0xFF111827),
                    fontsize: 16,
                  ),
                  SizedBox(height: 20,)
                ],
              ),
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
              SizedBox(height: MediaQuery.of(context).size.height*0.35,),
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