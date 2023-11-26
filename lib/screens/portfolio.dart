import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';
import 'package:flutter_graduation_app/widgets/customContainer/portfolioContainer.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/arrow-left.png'),
            MyText(
              text: 'Portfolio',
              fontsize: 20,
              color: Color(0xFF111827),
            ),
            SizedBox(
              width: 40,
            )
          ],
        ),
        SizedBox(
          height: 60,
        ),
        Row(
          children: [
            MyText(
              text: 'Add portfolio here',
              color: Color(0xFF111827),
              fontsize: 20,
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
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
        SizedBox(height: 30,),
       PortfolioContainer(
        text:'UI/UX Designer' ,
        sentence: 'CV.pdf 300KB',
       ),
       SizedBox(height: 20,),
        PortfolioContainer(
        text:'3D Designer' ,
        sentence: 'CV.pdf 300KB',
       ),
       SizedBox(height: 20,),
        PortfolioContainer(
        text:'Graphik Designer' ,
        sentence: 'CV.pdf 300KB',
       )
      ]
      ),
    )
    )
    );
  }
}
