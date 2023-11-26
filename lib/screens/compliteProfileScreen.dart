import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/customContainer/compliteProfile/ComleteProfileContainer.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';
import 'package:percent_indicator/percent_indicator.dart';


class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  bool personalderails = false;
  bool education = false;
  bool experience = false;
  bool portfolio = false;
   double counter = 0;
  double percent = 0.0;
  int counterText = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/arrow-left.png'),
              MyText(
                text: 'Complete Profile',
                fontsize: 20,
                color: Color(0xFF111827),
              ),
              SizedBox(
                width: 40,
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          CircularPercentIndicator
    (
      radius: 100,

    lineWidth: 10,
    percent: percent,
    progressColor: Color(0xFF3366FF),
    circularStrokeCap: CircularStrokeCap.round,
    center: Text(counter.toString(),style: TextStyle(fontSize: 60),),
    ),
          SizedBox(
            height: 30,
          ),
          Text(
            '${counterText}/4 Completed',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF3366FF),
              fontSize: 16,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
              height: 0.08,
              letterSpacing: 0.16,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          MySentence(
            text: 'Complete your profile before applying for a job',
          ),
          SizedBox(
            height: 40,
          ),
         CompliteProfileContainer(
          width: 60,
          text: 'Personal Details',
          sentence1: 'Full name, email, phone number, and your ',
          sentence2: 'address',
          status: personalderails,
          color: personalderails?Color(0xFFE0EAFF):Colors.white,
          onchange: (value) {
            setState(() {
              personalderails = value!;
            });
          },
         ),
         SizedBox(height: 20,),
          CompliteProfileContainer(
            width: 90,
          text: 'Education',
          sentence1: 'Enter your educational history to be  ',
          sentence2: 'considered by the recruiter',
          status: education,
          color: education?Color(0xFFE0EAFF):Colors.white,
          onchange: (value) {
            setState(() {
              education = value!;
            });
          },
         ),
          SizedBox(height: 20,),
          CompliteProfileContainer(
            width: 45,
          text: 'Experience',
          sentence1: 'Enter your work experience to be considered ',
          sentence2: 'by the recruiter',
          status: experience,
          color: experience?Color(0xFFE0EAFF):Colors.white,
          onchange: (value) {
            setState(() {
              experience = value!;
            });
          },
         ),
          SizedBox(height: 20,),
          CompliteProfileContainer(
            width: 55,
          text: 'Portfolio',
          sentence1: 'Create your portfolio. Applying for various  ',
          sentence2: 'types of jobs is easier.',
          status: portfolio,
          color: portfolio?Color(0xFFE0EAFF):Colors.white,
          onchange: (value) {
            setState(() {
              portfolio = value!;
            });
          },
         )
        ]),
      )),
    );
  }
}
