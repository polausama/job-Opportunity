import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class SaveScreen_two extends StatefulWidget {
  const SaveScreen_two({super.key});

  @override
  State<SaveScreen_two> createState() => _SaveScreen_twoState();
}

class _SaveScreen_twoState extends State<SaveScreen_two> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                                text: 'Saved',
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
                                    image: AssetImage('assets/images/bookmark-2.png')),
                              ),
                            ),
                            
                                       ],
                                     ),
                                     SizedBox(height: 60,),
                                     MyText(
                                       text: 'Nothing has been saved yet',
                                       color: Color(0xFF111827),
                                       fontsize: 24,
                                     ),
                                  SizedBox(height: 30,),
                                  
                                     MySentence(
                                       text: 'Press the star icon on the job you want to save. ',
                                     ),
                                     SizedBox(height: 30,),
                                  
                                     
                                     
                             ],
                           ),
                         ),
                       ),
                   ),
                 ],
               ),
          ],
        );
  }
}