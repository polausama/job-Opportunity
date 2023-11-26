import 'package:flutter/material.dart';

class RecentSearch extends StatelessWidget {
  String? text;
  double? width;
  MainAxisAlignment? axisAlignment;
   RecentSearch({this.text,this.width = double.infinity,this.axisAlignment = MainAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return   Container(
                width: width,
                height: 36,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                decoration: ShapeDecoration(
                  color: Color(0xFFF4F4F5),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFE5E7EB)),
                  ),
                ),
                child: 
                Row(
                  mainAxisAlignment: axisAlignment!,
                  children: [
                    
                    Text(
                      text!,
                      style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontSize: 14,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        height: 0.10,
                        letterSpacing: 0.14,
                      ),
                    ),
                  ],
                ),
              );
  }
}