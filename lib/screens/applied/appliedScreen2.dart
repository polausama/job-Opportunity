import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/customContainer/aplliedContainer/appliedContainer2.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class AppliedScreen_two extends StatefulWidget {
  const AppliedScreen_two({super.key});

  @override
  State<AppliedScreen_two> createState() => _AppliedScreen_twoState();
}

class _AppliedScreen_twoState extends State<AppliedScreen_two> {
    String? country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
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
            text: 'Type of work',
            color:Colors.black ,
            fontsize: 20,
          ),
          SizedBox(height: 25,),
          MySentence(
            text: 'Fill in your bio data correctly',
          ),
          SizedBox(height: 40,),
         
         AppliedContainer_two(
          text: 'Senior UX Designer',
          sentence: 'CV.pdf . Portfolio.pdf',
          child: Radio(
            value: 'one', 
            groupValue: country,
             onChanged: (value) {
setState(() {
                 country = value;

});             },),
         ),
           SizedBox(height: 10,),
         
         AppliedContainer_two(
          text: 'Senior UX Designer',
          sentence: 'CV.pdf . Portfolio.pdf',
          child: Radio(
            value: 'two', 
            groupValue: country,
             onChanged: (value) {
setState(() {
                 country = value;

});             },),
         ),
           SizedBox(height: 10,),
         
         AppliedContainer_two(
          text: 'Senior UX Designer',
          sentence: 'CV.pdf . Portfolio.pdf',
          child: Radio(
            value: 'three', 
            groupValue: country,
             onChanged: (value) {
setState(() {
                 country = value;

});             },),
         ),
SizedBox(height: MediaQuery.of(context).size.height*0.2,),
RoundedButton(
  text:'Next' ,
  ontap: () {
    
  },
)           ]
        ),
      )
      ),
    );
  }
}