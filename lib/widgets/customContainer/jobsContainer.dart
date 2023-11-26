import 'package:flutter/material.dart';

class JobsContainer extends StatelessWidget {
  String? text;
  Function()? ontap;
  double? width;
  double?height;
   JobsContainer({this.text,this.ontap,this.height,this.width});

  @override
  Widget build(BuildContext context) {
    return  
    InkWell(onTap:ontap ,
      child: Container(
                            width: 90,
                            height: 30,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 23, vertical: 6),
                            decoration: ShapeDecoration(
                              color:
                                  Colors.white.withOpacity(0.14000000059604645),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                text!,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                  height: 0.12,
                                  letterSpacing: 0.12,
                                ),
                              ),
                            ),
                          ),
    );
  }
}