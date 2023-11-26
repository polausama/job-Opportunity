import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/customContainer/nophonecontainer.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';
import 'package:flutter_graduation_app/widgets/textField/textFieldUser.dart';

class AppliedScreen_one extends StatefulWidget {
  const AppliedScreen_one({super.key});

  @override
  State<AppliedScreen_one> createState() => _AppliedScreenState();
}

class _AppliedScreenState extends State<AppliedScreen_one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: 
        Padding(
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
                    MyText(
                      text: 'Applied Job',
                      fontsize: 20,
                      color: Color(0xFF111827),
                    ),
                    SizedBox(
                      width: 40,
                    )
                  ],
                ),
         ),
        Center(
          child:   SizedBox
          
          
          
          (child: Image.asset('assets/images/zoom.png',fit: BoxFit.cover,),
          
          height: 50,
          
          width: 50,),
        ),
        SizedBox(height: 20,),
        Center(
          child:   MyText(text: 'UI/UX Designer',
          
          color: Colors.black,
          
          fontsize: 20,),
        ),
        SizedBox(height: 20,),
        Center(
          child:   MySentence(
          
            text: 'Spectrum • Jakarta, Indonesia ',
          
          ),
        ),
        SizedBox(height: 30,),
        MyText(
          text: 'Biodata',
          color:Colors.black ,
          fontsize: 20,
        ),
        SizedBox(height: 25,),
        MySentence(
          text: 'Fill in your bio data correctly',
        ),
        SizedBox(height: 60,),
        MyText(
          text: 'Full Name',
          color: Colors.black,
          fontsize: 16,
        ),
        SizedBox(height: 20,),
         Custom_Text_Field(
           icon: Icons.person, validator: (value) {}),
           SizedBox(height: 30,),
           MyText(text: 'Email',
           color: Colors.black,
           fontsize: 16,),
           SizedBox(height: 20,),
           Custom_Text_Field(
            icon:Icons.email ,
            saved: (value) {
              
            },
            validator: (p0) {
              
            },
           ),
            SizedBox(height: 30,),
           MyText(text: 'No.Handphone*',
           color: Colors.black,
           fontsize: 16,),
           SizedBox(height: 20,),
           NoPhoneContainer(),
           SizedBox(height: MediaQuery.of(context).size.height*0.2,),
           Center(
             child: RoundedButton(
              text: 'Next',
              ontap: () {
                
              },
             ),
           )


        
        
          ],
          ),
        )
        ),
    );
  }
}