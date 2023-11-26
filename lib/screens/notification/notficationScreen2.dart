import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class NotificationScreen_Two extends StatefulWidget {
  const NotificationScreen_Two({super.key});

  @override
  State<NotificationScreen_Two> createState() => _SaveScreen_twoState();
}

class _SaveScreen_twoState extends State<NotificationScreen_Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SafeArea(
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
                                text: 'Notification',
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
                                    image: AssetImage('assets/images/notification-bing.png')),
                              ),
                            ),
                            
                                       ],
                                     ),
                                     SizedBox(height: 60,),
                                     MyText(
                                       text: 'No new notifications yet',
                                       color: Color(0xFF111827),
                                       fontsize: 24,
                                     ),
                                  SizedBox(height: 30,),
                                  
                                     MySentence(
                                       text: 'You will receive a notification if there is  ',
                                     ),
                                     SizedBox(height: 20,),
                                     MySentence(
                                       text: 'something on your account  ',
                                     ),
                                  
                                     
                                     
                             ],
                           ),
                         ),
                       ),
                   ),
                 ],
               ),
          ],
        )
        ),
    );
  }
}