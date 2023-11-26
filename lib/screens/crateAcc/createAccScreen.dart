import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/customContainer/customContainer.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class CreateAccScreen extends StatefulWidget {
  const CreateAccScreen({super.key});

  @override
  State<CreateAccScreen> createState() => _CreateAccScreenState();
}

class _CreateAccScreenState extends State<CreateAccScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text:'What type of work are you ' ,
                color: Color(0xFF111827),
                fontsize: 24,
              ),
              SizedBox(height: 35,),
              MyText(
                text: 'interested in?',
                color: Color(0xFF111827),
                fontsize: 24,
              ),
              SizedBox(height: 35,),
              MySentence(text: 'Tell us what you’re interested in so we can '),
              SizedBox(height: 25,),
              MySentence(text: 'customise the app for your needs.',),
              SizedBox(height: 40,),
              Row(
                
                children: [
                  CustomContainer(
                    url: 'assets/images/bezier.png',
                    text:'UI/UX Designer' ,
                  ),
                  SizedBox(width: 50,),
                   CustomContainer(
                    url: 'assets/images/Ilustrator Category.png',
                    text:'Ilustrator Designe' ,
                  )
                ],
              ),
              SizedBox(height: 20,),
               Row(
                
                children: [
                  CustomContainer(
                    url: 'assets/images/Developer Category.png',
                    text:'Developer' ,
                  ),
                  SizedBox(width: 50,),
                   CustomContainer(
                    url: 'assets/images/Management Category.png',
                    text:'Management' ,
                  )
                ],
              ),
              SizedBox(height: 20,),
               Row(
                
                children: [
                  CustomContainer(
                    url: 'assets/images/Information technology category.png',
                    text:'Information' ,
                    text2: 'Technology',
                  ),
                  SizedBox(width: 50,),
                   CustomContainer(
                    url: 'assets/images/Research and Analytics category.png',
                    text:'Research and' ,
                    text2: 'Analytics',
                  )
                ],
              ),
              SizedBox(height: 80,),
              Center(
                child: RoundedButton(
                  text: 'Next',
                  ontap: () {
                
                  },
                ),
              )

            ],
          ),
        )
      )
     
      
    );
  }
}