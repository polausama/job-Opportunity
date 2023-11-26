import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/customContainer/profile/customRow.dart';
import 'package:flutter_graduation_app/widgets/customContainer/profile/customRow2.dart';
import 'package:flutter_graduation_app/widgets/customContainer/profileContainer.dart';
import 'package:flutter_graduation_app/widgets/customContainer/recentsearch.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  color: Color(0xFFD6E4FF),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('assets/images/arrow-left.png'),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Profile',
                              style: TextStyle(
                                color: Color(0xFF111827),
                                fontSize: 20,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                                height: 0.06,
                                letterSpacing: 0.20,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset('assets/images/logout.png'),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 15)),
                          MyText(
                            text: 'Rafif Dian Axelingga',
                            color: Color(0xFF111827),
                            fontsize: 20,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MySentence(
                            text: 'Senior UI/UX Designer',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          profileContiner(),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: MySentence(
                                  text: 'About',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Text(
                                  'Edit',
                                  style: TextStyle(
                                    color: Color(0xFF3366FF),
                                    fontSize: 14,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                    height: 0.10,
                                    letterSpacing: 0.14,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Container(
                              width: 400,
                              height: 130,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      MySentence(
                                        text:
                                            'Im Rafif Dian Axelingga, I’m UI/UX Designer, I have',
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      MySentence(
                                        text:
                                            'experience designing UI Design for approximately 1 ',
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      MySentence(
                                        text:
                                            'year. I am currently joining the Vektora studio team ',
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      MySentence(
                                        text:
                                            'based in Surakarta, Indonesia.I am a person who has a ',
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      MySentence(
                                        text:
                                            'high spirit and likes to work to achieve what I dream of.',
                                      )
                                    ],
                                  ),
                                ],
                              )
                              ),
  RecentSearch(
    text: 'General',
  ),
  SizedBox(height: 40,),
  CustomRow(),
 Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
 child: Divider(thickness: 2,),),
 CustomRow(),
 Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
 child: Divider(thickness: 2,),),
 CustomRow(),
 Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
 child: Divider(thickness: 2,),),
 CustomRow(),
 Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
 child: Divider(thickness: 2,),),
 CustomRow(),
 Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
 child: Divider(thickness: 2,),),
 
 RecentSearch(
  text: 'Others',
 ),
  SizedBox(height: 10,),

 CustomRow2(
  text: 'Accesibility',
 ),
 Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
 child: Divider(thickness: 2,),),
 CustomRow2(
  text: 'Help Center',
 ),
 Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
 child: Divider(thickness: 2,),),
 CustomRow2(
  text: 'Terms & Conditions',
 ),
 Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
 child: Divider(thickness: 2,),),
 CustomRow2(
  text: 'Privacy Policy',
 ),
 
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.2,
          left: MediaQuery.of(context).size.width * 0.4,
          child: CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/Profile.png'),
          ),
        ),
      ],
    );
  }
}
