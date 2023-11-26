import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/customContainer/helpCenterContainer.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';
import 'package:flutter_graduation_app/widgets/textField/searchTextfield.dart';

class HelpCenterScreen extends StatefulWidget {
  const HelpCenterScreen({super.key});

  @override
  State<HelpCenterScreen> createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Image.asset('assets/images/arrow-left.png'),
          MyText(
            text: 'Help Center ',
            fontsize: 20,
            color: Color(0xFF111827),
          ),
          SizedBox(
            width: 40,
          ),
        ]),
        SizedBox(
          height: 40,
        ),
        SearchTextField(
          hinttext: 'What can we help?',
          onchange: (p0) {},
          ontap: () {},
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          width: 400,
          height: 190,
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFFD1D5DB)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Column(
            
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                MySentence(
                    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing'),
                SizedBox(
                  height: 20,
                ),
                MySentence(
                    text: 'elit. Fusce ultricies mi enim, quis vulputate nibh'),
                SizedBox(
                  height: 20,
                ),
                MySentence(
                    text: 'faucibus at. Maecenas est ante, suscipit vel sem'),
                SizedBox(
                  height: 20,
                ),
                MySentence(
                    text:
                        'non, blandit blandit erat. Praesent pulvinar ante et'),
                SizedBox(
                  height: 20,
                ),
                MySentence(
                    text: 'felis porta vulputate. Curabitur ornare velit nec '),
                SizedBox(
                  height: 20,
                ),
                MySentence(
                    text:
                        'fringilla finibus. Phasellus mollis pharetra ante, in '),
                SizedBox(
                  height: 20,
                ),
                MySentence(
                    text: 'ullamcorper massa ullamcorper et. Curabitur ac leo'),
                SizedBox(
                  height: 20,
                ),
                MySentence(text: 'sit amet leo interdum mattis vel eu mauris.'),
              ]
              ),
        ),
        SizedBox(height: 20,),
       HelpCenterContainer(),
       SizedBox(height: 20,),
      HelpCenterContainer(),
      SizedBox(height: 20,),
       HelpCenterContainer(),
       SizedBox(height: 20,),
       HelpCenterContainer(),
       SizedBox(height: 20,),
       HelpCenterContainer(),

       
    ]
    )
        )
        )
        );
  }
}
