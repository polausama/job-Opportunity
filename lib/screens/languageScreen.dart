import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/customContainer/languageContainer.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class LanguageScreen extends StatefulWidget {
  LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String? country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/arrow-left.png'),
                  MyText(
                    text: 'Language',
                    fontsize: 20,
                    color: Color(0xFF111827),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                ],
              ),
              SizedBox(height: 20,),
               LanguageContainer(
                child: Row(
                children: [
                  Image.asset('assets/images/England.png'),
                  SizedBox(
                    width: 30,
                  ),
                  Text('England'),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                    ),
                  ),
                  Radio(
                    value: 'England',
                    groupValue: country,
                    onChanged: (value) {
                      setState(() {
                        country = value;
                      }) ;
   } ),
              
            ],
          ),
               ),
               LanguageContainer(
                child: Row(
                children: [
                  Image.asset('assets/images/Indonesia.png'),
                  SizedBox(
                    width: 30,
                  ),
                  Text('Indonesia'),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                    ),
                  ),
                  Radio(
                    value: 'Indonesia',
                    groupValue: country,
                    onChanged: (value) {
                      setState(() {
                        country = value;
                      }) ;
   } ),
              
            ],
          ),
               ),
               LanguageContainer(
                child: Row(
                children: [
                  Image.asset('assets/images/Saudi Arabia.png'),
                  SizedBox(
                    width: 30,
                  ),
                  Text('Saudi Arabia'),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                    ),
                  ),
                  Radio(
                    value: 'Saudi Arabia',
                    groupValue: country,
                    onChanged: (value) {
                      setState(() {
                        country = value;
                      }) ;
   } ),
              
            ],
          ),
               ),
               LanguageContainer(
                child: Row(
                children: [
                  Image.asset('assets/images/China.png'),
                  SizedBox(
                    width: 30,
                  ),
                  Text('China'),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                    ),
                  ),
                  Radio(
                    value: 'China',
                    groupValue: country,
                    onChanged: (value) {
                      setState(() {
                        country = value;
                      }) ;
   } ),
              
            ],
          ),
               ),
               LanguageContainer(
                child: Row(
                children: [
                  Image.asset('assets/images/Netherlands.png'),
                  SizedBox(
                    width: 30,
                  ),
                  Text('Netherlands'),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                    ),
                  ),
                  Radio(
                    value: 'Netherlands',
                    groupValue: country,
                    onChanged: (value) {
                      setState(() {
                        country = value;
                      }) ;
   } ),
              
            ],
          ),
               ),
               LanguageContainer(
                child: Row(
                children: [
                  Image.asset('assets/images/France.png'),
                  SizedBox(
                    width: 30,
                  ),
                  Text('France'),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                    ),
                  ),
                  Radio(
                    value: 'France',
                    groupValue: country,
                    onChanged: (value) {
                      setState(() {
                        country = value;
                      }) ;
   } ),
              
            ],
          ),
               ),
               LanguageContainer(
                child: Row(
                children: [
                  Image.asset('assets/images/Germany.png'),
                  SizedBox(
                    width: 30,
                  ),
                  Text('Germany'),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                    ),
                  ),
                  Radio(
                    value: 'Germany',
                    groupValue: country,
                    onChanged: (value) {
                      setState(() {
                        country = value;
                      }) ;
   } ),
              
            ],
          ),
               ),
               LanguageContainer(
                child: Row(
                children: [
                  Image.asset('assets/images/Japan.png'),
                  SizedBox(
                    width: 30,
                  ),
                  Text('Japan'),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                    ),
                  ),
                  Radio(
                    value: 'Japan',
                    groupValue: country,
                    onChanged: (value) {
                      setState(() {
                        country = value;
                      }) ;
   } ),
              
            ],
          ),
               ),
               LanguageContainer(
                child: Row(
                children: [
                  Image.asset('assets/images/South Korea.png'),
                  SizedBox(
                    width: 30,
                  ),
                  Text('South Korea'),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                    ),
                  ),
                  Radio(
                    value: 'South Korea',
                    groupValue: country,
                    onChanged: (value) {
                      setState(() {
                        country = value;
                      }) ;
   } ),
              
            ],
          ),
               ),
               LanguageContainer(
                child: Row(
                children: [
                  Image.asset('assets/images/Portugal.png'),
                  SizedBox(
                    width: 30,
                  ),
                  Text('Portugal'),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                    ),
                  ),
                  Radio(
                    value: 'Portugal',
                    groupValue: country,
                    onChanged: (value) {
                      setState(() {
                        country = value;
                      }) ;
   } ),
              
            ],
          ),
               ),
      ]
      )
      ),
       )
     )
      );
  }
}
