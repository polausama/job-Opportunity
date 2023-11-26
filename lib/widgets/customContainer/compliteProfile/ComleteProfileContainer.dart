import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';
import 'package:flutter_graduation_app/widgets/text/text.dart';

class CompliteProfileContainer extends StatelessWidget {
  Color?color;
  bool?status;
  Function(bool?)? onchange;
  String?text;
  String?sentence1;
  String?sentence2;
  double?width;
   CompliteProfileContainer({this.color,this.status,this.onchange,this.text,this.sentence1,this.sentence2,this.width});

  @override
  Widget build(BuildContext context) {
    return   Container(
            width: 400,
            height: 85,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            decoration: ShapeDecoration(
              color: color,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFD1D5DB)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                  
                  shape: CircleBorder(),
                  value: status,
                  onChanged: onchange,
                ),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 10)),
MyText(
  text: text,
  color: Colors.black,
  fontsize: 16,
),
SizedBox(height: 20,),
MySentence(
  text: sentence1,
  fontsize: 12,
),
SizedBox(height: 20,),
MySentence(
  text: sentence2,
  fontsize: 12,
)
                  ],
                ),
                SizedBox(width:width ,),
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      
                    }, icon: Icon(Icons.arrow_circle_right_sharp)),
                )

              ],
            ),
          );
  }
}