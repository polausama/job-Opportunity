import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class TermsConditionsScreen extends StatefulWidget {
  const TermsConditionsScreen({super.key});

  @override
  State<TermsConditionsScreen> createState() => _TermsConditionsScreenState();
}

class _TermsConditionsScreenState extends State<TermsConditionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/arrow-left.png'),
                MyText(
                  text: 'Terms & Conditions',
                  fontsize: 20,
                  color: Color(0xFF111827),
                ),
                SizedBox(
                  width: 40,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
MyText(text: 'Lorem ipsum dolor',
color:Color(0xFF111827) ,
fontsize: 20),
SizedBox(height: 40,),
MySentence(
  text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
),
SizedBox(height: 20,),
MySentence(
  text: 'Nam vel augue sit amet est molestie viverra. Nunc quis ',
),
SizedBox(height: 20,),
MySentence(
  text: 'bibendum orci. Donec feugiat massa mi, at hendrerit',
),
SizedBox(height: 20,),
MySentence(
  text: 'mauris rutrum at. Lorem ipsum dolor sit amet, ',
),
SizedBox(height: 20,),
MySentence(
  text: 'consectetur adipiscing elit. Nam vel augue sit amet est',
),
SizedBox(height: 20,),
MySentence(
  text: 'molestie viverra. Nunc quis bibendum orci. Donec',
),
SizedBox(height: 20,),
MySentence(
  text: 'feugiat massa mi, at hendrerit mauris rutrum at. Lorem',
),
SizedBox(height: 20,),
MySentence(
  text: 'ipsum dolor sit amet, consectetur adipiscing elit. Nam ',
),
SizedBox(height: 20,),
MySentence(
  text: 'vel augue sit amet est molestie viverra. Nunc quis',
),
SizedBox(height: 20,),
MySentence(
  text: 'bibendum orci. Donec feugiat massa mi, at hendrerit',
),
SizedBox(height: 20,),
MySentence(
  text: 'mauris rutrum at. ',
),
SizedBox(height: 40,),
MyText(
  text: 'Lorem ipsum dolor',
  color:Color(0xFF111827) ,
  fontsize: 20,
),
SizedBox(height: 40,),
MySentence(
  text: 'Nunc quis bibendum orci. Donec feugiat massa mi, at',
),
SizedBox(height: 20,),
MySentence(
  text: 'hendrerit mauris rutrum at. Lorem ipsum dolor sit amet',
),
SizedBox(height: 20,),
MySentence(
  text: 'consectetur adipiscing elit. ',
),
SizedBox(height: 20,),
Container(

padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
decoration: BoxDecoration(color: Color(0xFFF4F4F5)),
child:Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(padding:EdgeInsets.symmetric(vertical: 5)),
MySentence(
  text: 'Nunc quis bibendum orci. Donec feugiat massa',
),
SizedBox(height: 20,),
MySentence(
  text: 'mi, at hendrerit mauris rutrum at. Lorem ipsum ',
),
SizedBox(height: 20,),
MySentence(
  text: 'dolor sit amet, consectetur adipiscing elit. Nam ve',
),
SizedBox(height: 20,),
MySentence(
  text: 'augue sit amet est molestie viverra. Nunc quis ',
),
SizedBox(height: 20,),
MySentence(
  text: 'bibendum orci. Donec feugiat massa mi, at ',
),
SizedBox(height: 20,),
MySentence(
  text: 'hendrerit mauris rutrum at. ',
),
SizedBox(height: 20,),
  ],
)
            
        
        ),
        SizedBox(height: 30,),
        MySentence(
          text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
        ),
        SizedBox(height: 20,),
         MySentence(
          text: 'Nam vel augue sit amet est molestie viverra. Nunc quis',
        ),
        SizedBox(height: 20,),
         MySentence(
          text: 'bibendum orci. Donec feugiat massa mi, at hendrerit ',
        ),
        SizedBox(height: 20,),
         MySentence(
          text: 'mauris rutrum at. ',
        ),
        SizedBox(height: 20,),
        ],
        ),
      )
      ),
    );
  }
}