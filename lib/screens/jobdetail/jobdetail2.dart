import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/customContainer/jobdetail/jobdetailContainer.dart';
import 'package:flutter_graduation_app/widgets/customContainer/jobdetail/jobdetailcontainer2.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';
import 'package:toggle_switch/toggle_switch.dart';

class JobDetailScreen_two extends StatefulWidget {
  const JobDetailScreen_two({super.key});

  @override
  State<JobDetailScreen_two> createState() => _JobDetailScreen_twoState();
}

class _JobDetailScreen_twoState extends State<JobDetailScreen_two> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            text: 'Contact Us',
            color: Colors.black,
            fontsize: 14,
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            JobDetailContainer_two(
              text: 'twitter@mail.com',
              sentence: 'Email',
            ),
             JobDetailContainer_two(
              text: 'https://twitter.com',
              sentence: 'Website',
            )
            ],
          ),
          SizedBox(height: 50,),
          MyText(
            text: 'About Company',
            color: Colors.black,
            fontsize: 14,
          ),
          SizedBox(height: 20,),
           MySentence(text: 'Your role as the UI Designer is to use interactive components on',
              fontsize: 14,),
              SizedBox(height: 20,),
               MySentence(text: 'various platforms (web, desktop and mobile). This will include',
                fontsize: 14),
              SizedBox(height: 20,),
               MySentence(text: 'producing high-fidelity mock-ups, iconography, UI illustrations/',
                fontsize: 14),
              SizedBox(height: 20,),
               MySentence(text: 'graphics, and other graphic elements. As the UI Designer, you',
                fontsize: 14),
              SizedBox(height: 20,),
               MySentence(text: 'will be supporting the wider design team with the internal ',
                fontsize: 14),
              SizedBox(height: 20,),
               MySentence(text: 'Design System, tying together the visual language. You will with',
                fontsize: 14),
              SizedBox(height: 20,),
               MySentence(text: 'other UI and UX Designers, Product Managers, and Engineering',
                fontsize: 14),
              SizedBox(height: 20,),
               MySentence(text: 'teams in a highly customer-focused agile environment to help ',
                fontsize: 14),
              SizedBox(height: 20,),
               MySentence(text: 'define the vision of the products.',
                fontsize: 14),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          Center(
            child: RoundedButton(
              text: 'Apply now',
              ontap: () {},
            ),
          )
        ],
      ),
    );
  }
}
