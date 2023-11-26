import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class CreateAccScreen3 extends StatefulWidget {
  const CreateAccScreen3({super.key});

  @override
  State<CreateAccScreen3> createState() => _CreateAccScreen3State();
}

class _CreateAccScreen3State extends State<CreateAccScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body:
         Stack(
          
           children: [
            Positioned(
              top: MediaQuery.of(context).size.height*0.24,
              left: 150,
              child: CircleAvatar(radius: 2*2,
                      backgroundColor: Colors.amber,)),
                      Positioned(
              top: MediaQuery.of(context).size.height*0.3,
              right: 150,
              child: CircleAvatar(radius: 2*2,
                      backgroundColor: Colors.amber,)),
                      Positioned(
              top: MediaQuery.of(context).size.height*0.15,
              right: MediaQuery.of(context).size.width*0.35,
              child: CircleAvatar(radius: 2*2,
                      backgroundColor: Colors.amber,)),
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
                              image: AssetImage('assets/images/user-octagon.png')),
                        ),
                      ),
                      
                                 ],
                               ),
                               SizedBox(height: 60,),
                               MyText(
                                 text: 'Your account has been set up!',
                                 color: Color(0xFF111827),
                                 fontsize: 24,
                               ),
                            SizedBox(height: 30,),
                            
                               MySentence(
                                 text: 'We have customized feeds according to your',
                               ),
                               SizedBox(height: 30,),
                            
                               MySentence(
                                 text: 'preferences',
                               ),
                               SizedBox(height: 280,),
                               RoundedButton(
                                 text: 'Get Started',
                                 ontap: () {
                      
                                 },
                               )
                       ],
                     ),
                   ),
                 ),
             ),
           ],
         ));
  }
}
