import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';
import 'package:flutter_graduation_app/widgets/textField/editprofiletextfield.dart';
import 'package:flutter_graduation_app/widgets/textField/educcation/dateTextField.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: 
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/arrow-left.png'),
                  MyText(
                    text: 'Education',
                    fontsize: 20,
                    color: Color(0xFF111827),
                  ),
                  SizedBox(
                    width: 40,
                  )
                ],
              ),
              SizedBox(height: 40,),
              Container(
width: double.infinity,
height: 520,
padding: const EdgeInsets.only(
top: 20,
left: 12,
right: 12,
bottom: 16,
),
decoration: ShapeDecoration(
shape: RoundedRectangleBorder(
side: BorderSide(width: 1, color: Color(0xFFD1D5DB)),
borderRadius: BorderRadius.circular(12),
),
), 
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    MySentence(
      text: 'University *',
    ),
    SizedBox(height: 20,),
    EditProfileTextField(),
    SizedBox(height: 30,),
    MySentence(
      text: 'Title',
    ),
    SizedBox(height: 20,),
    EditProfileTextField(),
    SizedBox(height: 30,),
    MySentence(
      text: 'Start Year',
    ),
    SizedBox(height: 20,),
    DatetimeTextField(
      suffixicon: Icon(Icons.calendar_month),
    ),
    SizedBox(height: 30,),
    MySentence(
      text: 'End Year',
    ),
    SizedBox(height: 20,),
    DatetimeTextField(
      suffixicon: Icon(Icons.calendar_month),
    ),
    SizedBox(height: 20,),
    Center(
      child: RoundedButton(
        text: 'Save',
        ontap: () {
          
        },
      ),
    )


  ],
),
              ),
              SizedBox(height: 20,),
              Container(
width: double.infinity,
height: 100,
padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
decoration: ShapeDecoration(
shape: RoundedRectangleBorder(
side: BorderSide(width: 1, color: Color(0xFFD1D5DB)),
borderRadius: BorderRadius.circular(8),
),
), 
child: Row(
  children: [
    Image.asset('assets/images/Logo2.png'),
    SizedBox(width: 10,),
    Column(
      
      children: [
        Padding(padding: EdgeInsets.only(top: 20)),
MyText(
  text: 'The University of Arizona',
  color: Colors.black,
  fontsize: 16,
),
SizedBox(height: 20,),
MySentence(
  text:'Bachelor of Art and Design' ,
  fontsize: 14,
),
SizedBox(height: 20,),

MySentence(
  text: '2012 - 2015',
  fontsize:14 ,
)
      ],
    ),
    SizedBox(width: 150,),
    Icon(Icons.edit)
  ],
),
)
            ],
          ),
        )
        ),
    );
  }
}