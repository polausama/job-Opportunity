import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/text/sentence.dart';

class ContainerSaved extends StatelessWidget {
   String? imageurl;
  String?titletext;
  String?contenttext;
  String?salaryText;
  Function()?ontap;
   ContainerSaved({this.contenttext,this.imageurl,this.ontap,this.salaryText,this.titletext});

  @override
  Widget build(BuildContext context) {
    return Container(
                  width: 400,
                  height: 103,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            imageurl!)),
                                    color: Color(0xFF6690FF),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                ),
                                Text(
                                  titletext!,
                                  style: TextStyle(
                                    color: Color(0xFF111827),
                                    fontSize: 18,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                    height: 0.07,
                                    letterSpacing: 0.18,
                                  ),
                                ),
                                InkWell(
                                  onTap:ontap ,
                                  child: Image.asset(
                                      'assets/images/archive-minus-black.png'),
                                )
                              ],
                            ),
                            Center(
                                child: Text(contenttext!)),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                               
                              
                                
                                MySentence(
                                  text: 'Posted 2 days ago',
                                ),
                                SizedBox(width: 70,),
                                Icon(Icons.watch_later_outlined),
                                SizedBox(width: 10,),
                                MySentence(
                                  text: 'Be an early applicant',
                                )
                               
                              ],
                            )
                          ],
                        )
                      ]));
  }
}