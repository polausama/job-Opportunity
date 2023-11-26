import 'package:flutter/material.dart';

class ContainerSearch3 extends StatelessWidget {
  String? imageurl;
  String?titletext;
  String?contenttext;
  String?salaryText;
  Function()?ontap;
   ContainerSearch3({this.imageurl,this.titletext,this.contenttext,this.ontap,this.salaryText});

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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 90,
                                  height: 26,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 4),
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFD6E4FF),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Fulltime',
                                      style: TextStyle(
                                        color: Color(0xFF3366FF),
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                        height: 0.12,
                                        letterSpacing: 0.12,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 90,
                                  height: 26,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 4),
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFD6E4FF),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Remote',
                                      style: TextStyle(
                                        color: Color(0xFF3366FF),
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                        height: 0.12,
                                        letterSpacing: 0.12,
                                      ),
                                    ),
                                  ),
                                ),
                                
                                Text(
                                  '\$${salaryText}K',
                                  style: TextStyle(
                                    color: Color(0xFF2E8E18),
                                    fontSize: 16,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                    height: 0.08,
                                    letterSpacing: 0.16,
                                  ),
                                ),
                                Text(
                                  '/Month',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                    height: 0.12,
                                    letterSpacing: 0.12,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ]));
  }
}