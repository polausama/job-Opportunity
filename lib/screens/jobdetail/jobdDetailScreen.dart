import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/screens/jobdetail/jobdetail2.dart';
import 'package:flutter_graduation_app/screens/jobdetail/jobdetail3.dart';
import 'package:flutter_graduation_app/screens/jobdetail/jondetailScreen1.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/customContainer/jobdetail/jobdetailContainer.dart';
import 'package:flutter_graduation_app/widgets/customContainer/jobsContainer.dart';
import 'package:flutter_graduation_app/widgets/customContainer/recentJobs.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MainJobDerailScreen extends StatefulWidget {
  const MainJobDerailScreen({super.key});

  @override
  State<MainJobDerailScreen> createState() => _JobDetailScreenState();
}

class _JobDetailScreenState extends State<MainJobDerailScreen> {
  List<bool> isSelected = [true, false, false];
  List<Widget> widgets = [JobDetailScreen_one() ,JobDetailScreen_two(),JobDetailScreen_three()];

  int _selectedPage = 0;

  final PageController _pageController = PageController();

  void _changePage(int pageNum) {
    _pageController.animateToPage(
      pageNum,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.fastLinearToSlowEaseIn,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
         
                        Image.asset('assets/images/arrow-left.png'),
                        MyText(
                          text: 'Job Detail',
                          fontsize: 20,
                          color: Color(0xFF111827),
                        ),
                                              Container(
                                               color: Colors.blue,
                                               child: Image.asset('assets/images/archive-minus.png'))  ,                    
         
                      ],
                    ),
                    SizedBox(height: 40,),
JobDetailContainer(
  titletext:'Senior UI Designer' ,
             contenttext:'Twitter • Jakarta, Indonesia ' ,
             imageurl: 'assets/images/twitter.png',
             ontap:() {
               
             }, 
)     ,
SizedBox(height: 20,),

   Row(
    mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Container(
             width: 255,
             height:40 ,
             decoration: BoxDecoration(
             color: Colors.grey,
             borderRadius: BorderRadius.circular(20)

             ),
             child: ToggleButtons(
              borderRadius: BorderRadius.circular(20),
               isSelected: isSelected,
               fillColor: Colors.lightBlue.shade900,
               renderBorder: false,
               //splashColor: Colors.red,
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 12),
                   child:Text(
'Desicription',
textAlign: TextAlign.center,
style: TextStyle(
color: Colors.white,
fontSize: 14,
fontFamily: 'SF Pro Display',
fontWeight: FontWeight.w500,
height: 0.10,
letterSpacing: 0.14,
),
) ,
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 12),
                   child: Text(
'Company',
textAlign: TextAlign.center,
style: TextStyle(
color: Colors.white,
fontSize: 14,
fontFamily: 'SF Pro Display',
fontWeight: FontWeight.w500,
height: 0.10,
letterSpacing: 0.14,
),
) ,
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 12),
                   child: Text(
'People',
textAlign: TextAlign.center,
style: TextStyle(
color: Colors.white,
fontSize: 14,
fontFamily: 'SF Pro Display',
fontWeight: FontWeight.w500,
height: 0.10,
letterSpacing: 0.14,
),
) ,
                 ),
               ],
               onPressed: (int newIndex) {
                 setState(() {
                   for (int index = 0; index < isSelected.length; index++) {
                     if (index == newIndex) {
                       isSelected[index] = true;
                       _changePage(newIndex);
                     } else {
                       isSelected[index] = false;
                     }
                   }
                 });
               },
             ),
            ),
     ],
   ),
   SizedBox(height: 20,),
        Expanded(
         child: PageView.builder(
           onPageChanged: (value) {
             
         setState(() {
           _selectedPage = value;
         });
           },
           controller: _pageController,
           itemCount: widgets.length,
           itemBuilder: 
           (context, index) {
            return Container(
child: widgets[index],
            );
            






           },)
        ),
            


      ],
           ),
         )),
    );
  }
}