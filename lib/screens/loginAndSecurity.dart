import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/customContainer/languageContainer.dart';
import 'package:flutter_graduation_app/widgets/customContainer/recentsearch.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class LoginAndSecurityScreen extends StatefulWidget {
  const LoginAndSecurityScreen({super.key});

  @override
  State<LoginAndSecurityScreen> createState() => _LoginAndSecurityScreenState();
}

class _LoginAndSecurityScreenState extends State<LoginAndSecurityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
         Padding(
           padding: const EdgeInsets.symmetric(vertical:40 ,horizontal:30 ),
           child: Column(
         
         children: [
            Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/arrow-left.png'),
                    MyText(
                      text: 'Login and security',
                      fontsize: 20,
                      color: Color(0xFF111827),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                RecentSearch(
                  text: 'Accont access',
                ),
                SizedBox(height: 20,),
                LanguageContainer(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: 'Email address',
                        color: Color(0xFF111827),
                        fontsize: 16,
                      ),
                                            SizedBox(width: 70,),

                      MySentence(
                        text:'rafifdian12@gmail.com' ,
                      ),
                      Image.asset('assets/images/arrow-right.png')
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                LanguageContainer(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: 'Phone number',
                        color: Color(0xFF111827),
                        fontsize: 16,
                      ),
                                           
                      Image.asset('assets/images/arrow-right.png')
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                LanguageContainer(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: 'Email Change password',
                        color: Color(0xFF111827),
                        fontsize: 16,
                      ),
                                           
                      Image.asset('assets/images/arrow-right.png')
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                 LanguageContainer(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: 'Two-step verification',
                        color: Color(0xFF111827),
                        fontsize: 16,
                      ),
                                            SizedBox(width: 70,),

                      MySentence(
                        text:'Non active' ,
                      ),
                      Image.asset('assets/images/arrow-right.png')
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                 LanguageContainer(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: 'Face ID',
                        color: Color(0xFF111827),
                        fontsize: 16,
                      ),
                                           
                      Image.asset('assets/images/arrow-right.png')
                    ],
                  ),
                ),

         ],
                 ),
         )
        ),
    );
  }
}