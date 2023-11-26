import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graduation_app/contoller/login/pageViewState.dart';
import 'package:flutter_graduation_app/widgets/onBoardingSc/onboarding1.dart';
import 'package:flutter_graduation_app/widgets/onBoardingSc/onboarding2.dart';
import 'package:flutter_graduation_app/widgets/onBoardingSc/onboarding3.dart';


class PageViewCubit extends Cubit<PageViewState>{
  List<Widget> pages = [OnBoarding1(), OnBoarding2(), OnBoarding3()];
  int pageIndex = 0;
  

  PageViewCubit() : super(InitLoginState());
  static PageViewCubit get(context) => BlocProvider.of(context);

  
  void changeIndecator(int page){
    pageIndex = page;
    emit(ChangedIndecatorState());
  }

}
