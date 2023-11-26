import 'package:flutter/material.dart';
import 'package:flutter_graduation_app/widgets/buttons/buttoncard.dart';
import 'package:flutter_graduation_app/widgets/customContainer/jobsContainer.dart';

class SuggestedJobs extends StatelessWidget {
  String? urlimage;
  Color? backgroundcolor;
  Color? textcolor;
  String? text;
   SuggestedJobs({this.urlimage,this.backgroundcolor,this.textcolor,this.text });

  @override
  Widget build(BuildContext context) {
    return Container(
                width: 350,
                height: 183,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: ShapeDecoration(
                  color:backgroundcolor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                                image: AssetImage(urlimage!)),
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                        Text(
                          'Product Designer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                            height: 0.07,
                            letterSpacing: 0.18,
                          ),
                        ),
                        Image.asset('assets/images/archive-minus.png')
                      ],
                    ),
                    Center(
                      child: Text(
                        text!,
                        style: TextStyle(
                          color: Color(0xFF9CA3AF),
                          fontSize: 12,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 0.12,
                          letterSpacing: 0.12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //90 30
                       JobsContainer(
                        text: 'Fulltime',
                        ontap:() {
                          
                        }, 
                       ),
                        JobsContainer(
                          text: 'Remote',
                          ontap: () {
                            
                          },
                        ),
                        JobsContainer(
                          text: 'Design',
                          ontap: () {
                            
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text(
                          '\$12K-15K',
                          style: TextStyle(
                            color:textcolor,
                            fontSize: 20,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                            height: 0.06,
                            letterSpacing: 0.20,
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
                        SizedBox(
                          width: 80,
                        ),
                       ButtonCard(
                        ontap: () {
                          
                        },
                       )
                      ],
                    )
                  ],
                ),
              );
  }
}