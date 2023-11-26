
import 'package:flutter/material.dart';

class JobDetailContainer extends StatelessWidget {
  String?titletext;
  String?contenttext;
  String?imageurl;
  Function()? ontap;
   JobDetailContainer({this.titletext,this.contenttext,this.imageurl,this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
                  width: 400,
                  height: 150,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                        SizedBox(height: 25,),

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
                        SizedBox(height: 15,),
                      
                        Text(contenttext!),
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
                                  'Onsite',
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
                                  'Senior',
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
                           
                          ],
                        )
                      ]));
  }
}