import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';
import 'package:toggle_switch/toggle_switch.dart';

class AppliedScreen_four extends StatefulWidget {
  const AppliedScreen_four({super.key});

  @override
  State<AppliedScreen_four> createState() => _AppliedScreen_fourState();
}

class _AppliedScreen_fourState extends State<AppliedScreen_four> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  
      SafeArea(
        child: Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Padding(
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
            ),
             ToggleSwitch(
                minWidth: 200,
                minHeight: 40,
                cornerRadius: 50,
                fontSize: 15,
                activeBgColor: [Color(0xFF091A7A)],
                activeFgColor: Colors.white,
                inactiveBgColor: Color(0xFFF4F4F5) ,
                inactiveFgColor:  Color(0xFF6B7280),
                
                totalSwitches: 2,
                labels: [' Active','Rejected'],
                onToggle: (index) {
                  print('Selected item Position: $index');
                },
              ),
            Stack(
                
                 children: [
                  Positioned(//4mal
                    top: MediaQuery.of(context).size.height*0.2,
                    left: 150,
                    child: CircleAvatar(radius: 2*2,
                            backgroundColor: Color(0xFFD6E4FF),)),
                            Positioned(
                    top: MediaQuery.of(context).size.height*0.23,
                    right: 150,
                    child: CircleAvatar(radius: 2*2,
                            backgroundColor: Color(0xFFD6E4FF),)),
                            Positioned(
                    top: MediaQuery.of(context).size.height*0.1,
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
                                    image: AssetImage('assets/images/clipboard-close.png')),
                              ),
                            ),
                            
                                       ],
                                     ),
                                     SizedBox(height: 60,),
                                     MyText(
                                       text: 'No applications were rejected',
                                       color: Color(0xFF111827),
                                       fontsize: 24,
                                     ),
                                  SizedBox(height: 30,),
                                  
                                     MySentence(
                                       text: 'If there is an application that is rejected by the ',
                                     ),
                                     SizedBox(height: 30,),
                                  
                                     MySentence(
                                       text: 'company it will appear here',
                                     ),
                                     
                             ],
                           ),
                         ),
                       ),
                   ),
                 ],
               ),
          ],
        ),
      ),
    );
  }
}