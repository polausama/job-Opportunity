import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
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
                    text: 'Privacy Policy',
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
          MyText(text: 'Your privacy is important',
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
          MySentence(
            text: 'Nam vel augue sit amet est molestie viverra. Nunc quis',
          ),
          SizedBox(height: 20,),
          MySentence(
            text: 'bibendum orci. Donec feugiat massa mi, at hendrerit ',
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
            text: 'feugiat massa mi, at hendrerit mauris rutrum at',
          ),
          SizedBox(height: 40,),
          MyText(text: 'Data controllers and contract ',
          color: Color(0xFF111827),
          fontsize: 20,),
          SizedBox(height: 20,),
          MyText(
            text: 'partners',
            color:Color(0xFF111827) ,
            fontsize:20 ,
          ),
          SizedBox(height: 20,),
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
          MySentence(
            text: 'Nam vel augue sit amet est molestie viverra. Nunc quis',
          ),
          SizedBox(height: 20,),
          MySentence(
            text: 'bibendum orci. Donec feugiat massa mi, at hendrerit ',
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
            text: 'feugiat massa mi, at hendrerit mauris rutrum at',
          ),
          
                  ],
                  ),
                ),
          )
      ),
    );
  }
}