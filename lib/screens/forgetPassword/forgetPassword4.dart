import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class ForgetPasswordScreen_four extends StatefulWidget {
  const ForgetPasswordScreen_four({super.key});

  @override
  State<ForgetPasswordScreen_four> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen_four> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         Stack(
          
           children: [
            Positioned(
              top: MediaQuery.of(context).size.height*0.25,
              left: 150,
              child: CircleAvatar(radius: 2*2,
                      backgroundColor: Color(0xFFD6E4FF),)),
                      Positioned(
              top: MediaQuery.of(context).size.height*0.27,
              right: 150,
              child: CircleAvatar(radius: 2*2,
                      backgroundColor: Color(0xFFD6E4FF),)),
                      Positioned(
              top: MediaQuery.of(context).size.height*0.15,
              right: MediaQuery.of(context).size.width*0.35,
              child: CircleAvatar(radius: 2*2,
                      backgroundColor: Color(0xFFD6E4FF),)),
             SafeArea(
               child: Center(
                   child: 
                   Padding(
                     padding: const EdgeInsets.only(top: 80),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                               Stack(
                                 alignment: AlignmentDirectional.center,
                                 children: [
                      CircleAvatar(
                        radius: 5 * 15,
                        backgroundColor: Color(0xFFEFF4FF),
                        child: CircleAvatar(
                          radius: 5 * 10,
                          backgroundColor: Color(0x4CD6E4FF),
                          child: Image(
                              image: AssetImage('assets/images/directbox-receive.png')),
                        ),
                      ),
                      
                                 ],
                               ),
                               SizedBox(height: 60,),
                               MyText(
                                 text: 'Password changed ',
                                 color: Color(0xFF111827),
                                 fontsize: 24,
                               ),
                               SizedBox(height: 30,),
                               MyText(
                                text: 'succesfully!',
                                color: Colors.black,
                                fontsize: 24,
                               ),
                            SizedBox(height: 30,),
                            
                               MySentence(
                                 text: 'Your password has been changed successfully',
                               ),
                               SizedBox(height: 20,),
                            
                               MySentence(
                                 text: 'we will let you know if there are more problems',
                               ),
                                                              SizedBox(height: 20,),
                            
                               MySentence(
                                 text: 'with your account',
                               ),

                               SizedBox(height: MediaQuery.of(context).size.height*0.4,),
                               RoundedButton(
                                 text: 'Open email app',
                                 ontap: () {
                      
                                 },
                               )
                       ],
                     ),
                   ),
                 ),
             ),
           ],
         )
       );
  }
}