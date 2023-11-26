import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graduation_app/contoller/login/pageViewCubit.dart';
import 'package:flutter_graduation_app/contoller/login/pageViewState.dart';
import 'package:flutter_graduation_app/widgets/buttons/roundedButton.dart';

class PageViewScreen extends StatefulWidget {
  @override
  State<PageViewScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<PageViewScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PageViewCubit,PageViewState>(
        builder: (context, state) {
          return SafeArea(
        child: 
        PageView.builder(
            onPageChanged: (page) {
             PageViewCubit.get(context).changeIndecator(page);
            },
            itemCount: PageViewCubit.get(context).pages.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/Logo(1).png"),
                        Text(
                          'Skip',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF6B7280),
                            fontSize: 16,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0.08,
                            letterSpacing: 0.16,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  PageViewCubit.get(context).pages[index],
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < PageViewCubit.get(context).pages.length; i++)
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                color: PageViewCubit.get(context).pageIndex == i
                                    ? Color(0xFF3366FF)
                                    : Color(0xFFADC8FF),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  RoundedButton(
                    text: PageViewCubit.get(context).pageIndex == 2? 'Get Strarted' : 'Next'
                  )
                 
                ],
              );
            }),
      );
        },)
      
    );
  }
}
