import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/customContainer/aplliedContainer/appliedContainer.dart';
import 'package:flutter_graduation_app/widgets/customContainer/recentsearch.dart';
import 'package:flutter_graduation_app/widgets/customContainer/saved/containerSved.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                        text: 'Applied Job',
                        fontsize: 20,
                        color: Color(0xFF111827),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                    ],
                ),
                SizedBox(height: 30,),
                RecentSearch(
                  text:'12 Job Saved' ,
                  axisAlignment: MainAxisAlignment.center,
                ),
                SizedBox(height: 40,),
                ContainerSaved(
                   titletext: 'UI/UX Designer',
                contenttext:'VK • Yogyakarta, Indonesia  ' ,
                imageurl: 'assets/images/twitter.png',
                salaryText: '12',
                ontap: () {
                  
                },
                ),
                Divider(thickness: 2,),
                                SizedBox(height: 20,),

                ContainerSaved(
                   titletext: 'UI/UX Designer',
                contenttext:'VK • Yogyakarta, Indonesia  ' ,
                imageurl: 'assets/images/twitter.png',
                salaryText: '12',
                ontap: () {
                  
                },
                ),
                Divider(thickness: 2,),
                                SizedBox(height: 20,),

                ContainerSaved(
                   titletext: 'UI/UX Designer',
                contenttext:'VK • Yogyakarta, Indonesia  ' ,
                imageurl: 'assets/images/twitter.png',
                salaryText: '12',
                ontap: () {
                  
                },
                ),
                Divider(thickness: 2,),
                                SizedBox(height: 20,),

                ContainerSaved(
                   titletext: 'UI/UX Designer',
                contenttext:'VK • Yogyakarta, Indonesia  ' ,
                imageurl: 'assets/images/twitter.png',
                salaryText: '12',
                ontap: () {
                  
                },
                ),
                Divider(thickness: 2,),
                                SizedBox(height: 20,),

                ContainerSaved(
                   titletext: 'UI/UX Designer',
                contenttext:'VK • Yogyakarta, Indonesia  ' ,
                imageurl: 'assets/images/twitter.png',
                salaryText: '12',
                ontap: () {
                  
                },
                ),
                Divider(thickness: 2,)
          ],
        ),
      ),
    );
  }
}