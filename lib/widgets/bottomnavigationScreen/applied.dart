import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/customContainer/ContainerSearch3.dart';
import 'package:flutter_graduation_app/widgets/customContainer/aplliedContainer/appliedContainer.dart';
import 'package:flutter_graduation_app/widgets/customContainer/recentsearch.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';
import 'package:toggle_switch/toggle_switch.dart';
class AppliedScreen extends StatefulWidget {
  const AppliedScreen({super.key});

  @override
  State<AppliedScreen> createState() => _AppliedScreenState();
}

class _AppliedScreenState extends State<AppliedScreen> {
  int?currentindex;
  @override
  Widget build(BuildContext context) {
    return 
    SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40,horizontal: 30),
        child:
         SingleChildScrollView(
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
              SizedBox(height: 40,),
              ToggleSwitch(
                minWidth: 200,
                minHeight: 40,
                cornerRadius: 50,
                fontSize: 15,
                activeBgColor: [Color(0xFF091A7A)],
                activeFgColor: Colors.white,
                inactiveBgColor: Color(0xFFF4F4F5) ,
                inactiveFgColor:  Color(0xFF6B7280),
                
                totalSwitches: 2,
                labels: [' Active','Rejected'],
                onToggle: (index) {
                  print('Selected item Position: $index');
                },
              ),
              SizedBox(height: 20,),
              RecentSearch(
                text: '3 Jobs',
              ),
              SizedBox(height: 40,),
             AppliedContainer(
              titletext: 'UI/UX Designer',
                contenttext:'VK • Yogyakarta, Indonesia  ' ,
                imageurl: 'assets/images/twitter.png',
                salaryText: '12',
                ontap: () {
                  
                },
             ),
             SizedBox(height: 20,),
             Container(
width: double.infinity,
height: 70,
padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
decoration: ShapeDecoration(
shape: RoundedRectangleBorder(
side: BorderSide(width: 1, color: Color(0xFFD1D5DB)),
borderRadius: BorderRadius.circular(8),
),
), ),
SizedBox(height: 10,),
Divider(
  thickness: 2,
)
            ],
                 ),
         ),
        )
        );
  }
}