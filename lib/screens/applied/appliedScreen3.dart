import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/customContainer/portfolioContainer.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class AppliedScreen_Three extends StatefulWidget {
  const AppliedScreen_Three({super.key});

  @override
  State<AppliedScreen_Three> createState() => _AppliedScreen_ThreeState();
}

class _AppliedScreen_ThreeState extends State<AppliedScreen_Three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
               padding: const EdgeInsets.symmetric(vertical: 20),
               child: Row(
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
                        )
                      ],
                    ),
             ),
               Center(
              child:   SizedBox
              
              
              
              (child: Image.asset('assets/images/zoom.png',fit: BoxFit.cover,),
              
              height: 50,
              
              width: 50,),
            ),
            SizedBox(height: 20,),
            Center(
              child:   MyText(text: 'UI/UX Designer',
              
              color: Colors.black,
              
              fontsize: 20,),
            ),
            SizedBox(height: 20,),
            Center(
              child:   MySentence(
              
                text: 'Spectrum • Jakarta, Indonesia ',
              
              ),
            ),
            SizedBox(height: 30,),
             MyText(
              text: 'Tittle',
              color:Colors.black ,
              fontsize: 14,
            ),
            SizedBox(height: 20,),
             MyText(
              text: 'Upload portfolio',
              color:Colors.black ,
              fontsize: 20,
            ),
            SizedBox(height: 25,),
            MySentence(
              text: 'Fill in your bio data correctly',
            ),
            SizedBox(
              height: 60,
            ),
            MyText(
              text:'Upload CV*' ,
              color:Colors.black ,
              fontsize:16 ,
            ),
            SizedBox(height: 20,),
             Center(
               child: PortfolioContainer(
                     text:'UI/UX Designer' ,
                     sentence: 'CV.pdf 300KB',
                    ),
             ),
             SizedBox(
              height: 40,
             ),
             MyText(
              text: 'Other File',
              color: Colors.black,
              fontsize: 16,
             ),
             SizedBox(height: 20,),
              Center(
                child: Container(
                        width: 327,
                        height: 223,
                        padding: const EdgeInsets.only(
                          top: 16,
                          left: 16,
                          right: 16,
                          bottom: 20,
                        ),
                        decoration: ShapeDecoration(
                          color: Color(0xFFEBF2FF),
                          shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.50, color: Color(0xFF3366FF)),
                borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Column(
                          children: [
                           Stack(
                children: [
                   Container(
                  width: 56,
                  height: 56,
                  padding: const EdgeInsets.all(12),
                  decoration: ShapeDecoration(
                    color: Color(0xFFD6E4FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1000),
                    ),
                  ),
                ),
                Image.asset('assets/images/document-upload.png')
                ],
                           ),
                SizedBox(
                  height: 30,
                ),
                MyText(
                  text: 'Upload your other file',
                  color: Color(0xFF111827),
                  fontsize: 18,
                ),
                SizedBox(
                  height: 25,
                ),
                MySentence(
                  text: 'Max. file size 10 MB',
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    RoundedButton(
                      width: 290,
                      text: 'Add file',
                      color: Color(0xFFD6E4FF),
                      textcolor: Color(0xFF3366FF),
                      ontap: () {},
                    )
                  ],
                ),
                
                          ],
                        ),
                      ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                Center( 
                  child: RoundedButton(
                    text: 'Submited',
                    colorborderside: Color(0xFFD1D5DB),
                    ontap: () {
                      
                    },
                    color: Color(0xFFD1D5DB),
                  ),
                )
            ],
          ),
        )),
    );
  }
}