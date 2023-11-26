import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class JobDetailScreen_one extends StatefulWidget {
  const JobDetailScreen_one({super.key});

  @override
  State<JobDetailScreen_one> createState() => _JobDetailScreeen_fiveState();
}

class _JobDetailScreeen_fiveState extends State<JobDetailScreen_one> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          MyText(
                text:'Job Description' ,
                color: Colors.black,
                fontsize:14 ,
              ) ,
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
              SizedBox(height: 40,),
              MyText(
                text: 'Skill Required',
                color: Colors.black,
                fontsize: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MySentence(
                        text: '',
                        fontsize: 14,
                      ),
                      SizedBox(height: 20,),
                      MySentence(
                        text: 'A strong visual portfolio with clear understanding of UI ',
                        fontsize: 14,
                      ),
                      SizedBox(height: 20,),
                      MySentence(
                        text: 'methodologies',
                        fontsize: 14,
                      ),
                      SizedBox(height: 20,),
                      MySentence(
                        text: 'Ability to create hi-fidelity mock-ups in Figma',
                        fontsize: 14,
                      ),
                      SizedBox(height: 20,),
                      MySentence(
                        text: 'Ability to create various graphics for the web e.g. illustrations',
                        fontsize: 14,
                      ),
                      SizedBox(height: 20,),
                      MySentence(
                        text: 'and icons',
                        fontsize: 14,
                      ),
                      SizedBox(height: 20,),
                      MySentence(
                        text: 'Able to facilitate workshops and liaise with stakeholders',
                        fontsize: 14,
                      ),
                      SizedBox(height: 20,),
              
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.08,),
              Center(
                child: RoundedButton(
                  text:'Apply now' ,
                  ontap: () {
                    
                  },
                ),
              )
        ],
      );
  }
}