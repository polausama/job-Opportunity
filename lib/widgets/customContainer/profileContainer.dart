import 'package:flutter/material.dart';

class profileContiner extends StatelessWidget {
   profileContiner();

  @override
  Widget build(BuildContext context) {
    return  Container(
                            width: 327,
                            height: 68,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 3, vertical: 8),
                            decoration: ShapeDecoration(
                              color: Color(0xFFFAFAFA),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10)),
                                    Text(
                                      'Applied',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF6B7280),
                                        fontSize: 14,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                        height: 0.10,
                                        letterSpacing: 0.14,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      '46',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF111827),
                                        fontSize: 20,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                        height: 0.06,
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                  ],
                                ),
                                VerticalDivider(
                                  thickness: 2,
                                ),
                                Column(
                                  children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10)),
                                    Text(
                                      'Reviewed',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF6B7280),
                                        fontSize: 14,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                        height: 0.10,
                                        letterSpacing: 0.14,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      '46',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF111827),
                                        fontSize: 20,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                        height: 0.06,
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                  ],
                                ),
                                VerticalDivider(
                                  thickness: 2,
                                ),
                                Column(
                                  children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10)),
                                    Text(
                                      'Contacted',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF6B7280),
                                        fontSize: 14,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                        height: 0.10,
                                        letterSpacing: 0.14,
                                      ),
                                    ),
                                    SizedBox(height: 30,),
                                    Text(
                                      '46',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF111827),
                                        fontSize: 20,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                        height: 0.06,
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
  }
}