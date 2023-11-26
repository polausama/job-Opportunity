import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/screens/search/searchScreen.dart';
import 'package:flutter_graduation_app/widgets/customContainer/jobsContainer.dart';
import 'package:flutter_graduation_app/widgets/customContainer/recentJobs.dart';
import 'package:flutter_graduation_app/widgets/customContainer/suggestedJobs.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';
import 'package:flutter_graduation_app/widgets/textField/searchTextfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return
     SingleChildScrollView(
       child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
           child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,      
       children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 MyText(
                   text: 'Hi, Rafif Dian👋',
                   color:  Color(0xFF111827),
                   fontsize: 24,
                 ),
                 Container(
     width: 48,
     height: 48,
     padding: const EdgeInsets.all(12),
     decoration: ShapeDecoration(
       image: DecorationImage(image: AssetImage('assets/images/notification.png')),
     shape: RoundedRectangleBorder(
     side: BorderSide(width: 1, color: Color(0xFFD1D5DB)),
     borderRadius: BorderRadius.circular(100),
     ),
     )
                 )
               ],
             ),
             SizedBox(height: 20,),
             MySentence(
               text: 'Create a better future for yourself here',
             ),
             SizedBox(height: 40,),
             SearchTextField(
              hinttext: 'Search',
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchScreen()));
                print('hello');
              },
               onchange: (p0) {
                 
               },
             ),
             SizedBox(height: 30,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 MyText(
                   text: 'Suggested Job',
                   color: Color(0xFF111827),
                   fontsize: 18,
     
                 ),
                 MyText(
                   text: 'View all',
                   color:Color(0xFF3366FF) ,
                   fontsize: 14,
                 )
               ],
             ),
             SizedBox(height: 20,),
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
               child: Row(
                 children: [
             SuggestedJobs(
                        backgroundcolor:Color(0xFF091A7A) ,
                        text:'Zoom • United States' ,
                        textcolor: Colors.white,
                        urlimage: 'assets/images/zoom.png',
                      ),
                      SizedBox(width: 10,),
                      SuggestedJobs(
                        backgroundcolor:Color(0xFF091A7A) ,
                        text:'Zoom • United States' ,
                        textcolor: Colors.white,
                        urlimage: 'assets/images/zoom.png',
                      ),
                 ],
               ),
             ),
             SizedBox(height: 40,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 MyText(
                   text: 'Recent Job',
                   color: Color(0xFF111827),
                   fontsize: 18,
     
                 ),
                 MyText(
                   text: 'View all',
                   color:Color(0xFF3366FF) ,
                   fontsize: 14,
                 )
               ],
             ),
             SizedBox(height: 30,),
             RecentJobs(
              titletext:'Senior UI Designer' ,
              contenttext:'Twitter • Jakarta, Indonesia ' ,
              imageurl: 'assets/images/twitter.png',
              ontap:() {
                
              }, 
             ),
             SizedBox(height: 18,),
             Row(
              children: [
                Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    thickness: 0.5,
                    color: Color(0xFF6B7280),
                  ),
                ),
              ),
              ],
             ),
             SizedBox(height: 18,),
              RecentJobs(
              titletext:'Senior UX Designer' ,
              contenttext: 'Discord • Jakarta, Indonesia ',
              imageurl:'assets/images/discord.png' ,
              ontap: () {
                
              },
             )
           ]
           )
           ),
     );
  }
}
