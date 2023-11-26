import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/customContainer/flagContainer2.dart';
import 'package:flutter_graduation_app/widgets/customContainer/flagContainter.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class CreateAccScreen2 extends StatefulWidget {
  const CreateAccScreen2({super.key});

  @override
  State<CreateAccScreen2> createState() => _CreateAccScreen2State();
}

class _CreateAccScreen2State extends State<CreateAccScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.only(left: 20, top: 50),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: 'Where are you prefefred ',
                        color: Color(0xFF111827),
                        fontsize: 24,
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      MyText(
                        text: 'Location?',
                        color: Color(0xFF111827),
                        fontsize: 24,
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      MySentence(
                          text: 'Let us know, where is the work location you'),
                      SizedBox(
                        height: 25,
                      ),
                      MySentence(
                        text: 'want at this time, so we can adjust it.',
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: 327,
                        height: 46,
                        padding: const EdgeInsets.all(3),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF4F4F5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Row(
                          //mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                           MySentence(
                            text: 'Work From Office',
                           ),
                            MySentence(
                              text: 'Remote Work',
                            )
                          ],
                        ),
                      ),
                      SizedBox(height:40 ,),
                      MySentence(
                        text: 'Select the country you want for your job',
                      ),
                      SizedBox(height: 30,),
                      Row(
                        children: [
                        FlagContainer(
                          url: 'assets/images/Ellipse 804.png',
                          text: 'United States',
                        ),
                        SizedBox(width: 20,),
                        FlagContainer(
                          url:'assets/images/Ellipse 804(1).png' ,
                          text: 'Malaysia',
                        )
                      ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                        FlagContainer(
                          url: 'assets/images/Ellipse 804(2).png',
                          text: 'Singapore',
                        ),
                        SizedBox(width: 20,),
                        FlagContainer(
                          url:'assets/images/Ellipse 804(3).png' ,
                          text: 'Indonesia',
                        )
                      ],),
                      SizedBox(height: 20,),
                       Row(
                        children: [
                        FlagContainer(
                          url: 'assets/images/Ellipse 804(4).png',
                          text: 'Philiphines',
                        ),
                        SizedBox(width: 20,),
                        FlagContainer(
                          url:'assets/images/Ellipse 804(5).png' ,
                          text: 'Polandia',
                        )
                      ],),
                      SizedBox(height: 20,),
                       Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                       FlagContainer2(
                        width: 100,
url:  'assets/images/Ellipse 804(6).png',
text: 'India' ,
                       ),
                        SizedBox(width: 20,),
                        FlagContainer2(
                          width: 125,
                          url:'assets/images/Ellipse 804(7).png' ,
                          text: 'Vietnam',
                        ),
                        SizedBox(width: 20,),
                         FlagContainer2(
                          width: 125,
                          url:'assets/images/Ellipse 804(8).png' ,
                          text: 'China',
                        ),
                      ],),
                      SizedBox(height: 20,),
                       Row(
                        children: [
                        FlagContainer(
                          url: 'assets/images/Ellipse 804(9).png',
                          text: 'Canada',
                        ),
                        SizedBox(width: 20,),
                        FlagContainer(
                          url:'assets/images/Ellipse 804(10).png' ,
                          text: 'Saudi Arabia',
                        )
                      ],),
                      SizedBox(height: 20,),
                       Row(
                        children: [
                        FlagContainer(
                          url: 'assets/images/Ellipse 804(11).png',
                          text: 'Argentina',
                        ),
                        SizedBox(width: 20,),
                        FlagContainer(
                          url:'assets/images/Ellipse 804(12).png' ,
                          text: 'Brazil',
                        )
                      ],
                      ),
                      SizedBox(height: 30,),
                      Center(
                        child: RoundedButton(
                          text:'Next' ,
                          ontap: () {
                            
                          },
                        ),
                      )
                        
                    ]
                    )
                    )
                    )
                    );
  }
}
