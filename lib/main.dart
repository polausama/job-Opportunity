import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graduation_app/contoller/login/pageViewCubit.dart';
import 'package:flutter_graduation_app/screens/applied/appliedScreen.dart';
import 'package:flutter_graduation_app/screens/applied/appliedScreen2.dart';
import 'package:flutter_graduation_app/screens/applied/appliedScreen3.dart';
import 'package:flutter_graduation_app/screens/applied/appliedScreen4.dart';
import 'package:flutter_graduation_app/screens/compliteProfileScreen.dart';
import 'package:flutter_graduation_app/screens/crateAcc/CreateAccScreen3.dart';
import 'package:flutter_graduation_app/screens/PrivacyPolicyScreen.dart';
import 'package:flutter_graduation_app/screens/Terms%20&%20ConditionsScreen.dart';
import 'package:flutter_graduation_app/screens/changePassScreen.dart';
import 'package:flutter_graduation_app/screens/crateAcc/createAccScreen.dart';
import 'package:flutter_graduation_app/screens/crateAcc/createAccScreen2.dart';
import 'package:flutter_graduation_app/screens/editProfileScreen.dart';
import 'package:flutter_graduation_app/screens/educationScreen.dart';
import 'package:flutter_graduation_app/screens/emailAddressScreen.dart';
import 'package:flutter_graduation_app/screens/experinceScreen.dart';
import 'package:flutter_graduation_app/screens/forgetPassword/ForgetPasswordScreen.dart';
import 'package:flutter_graduation_app/screens/forgetPassword/forgetPassword2.dart';
import 'package:flutter_graduation_app/screens/forgetPassword/forgetPassword3.dart';
import 'package:flutter_graduation_app/screens/forgetPassword/forgetPassword4.dart';
import 'package:flutter_graduation_app/screens/helpCenterScreen.dart';
import 'package:flutter_graduation_app/screens/jobdetail/jobdDetailScreen.dart';
import 'package:flutter_graduation_app/screens/jobdetail/jobdetail2.dart';
import 'package:flutter_graduation_app/screens/jobdetail/jobdetail3.dart';
import 'package:flutter_graduation_app/screens/languageScreen.dart';
import 'package:flutter_graduation_app/screens/loginAndSecurity.dart';
import 'package:flutter_graduation_app/screens/mainScreen.dart';
import 'package:flutter_graduation_app/screens/loginScreen.dart';
import 'package:flutter_graduation_app/screens/notification/notficationScreen2.dart';
import 'package:flutter_graduation_app/screens/notification/notification.dart';
import 'package:flutter_graduation_app/screens/pageViewScreen.dart';
import 'package:flutter_graduation_app/screens/personailDetailsScreen.dart';
import 'package:flutter_graduation_app/screens/phoneNumberScreen.dart';
import 'package:flutter_graduation_app/screens/portfolio.dart';
import 'package:flutter_graduation_app/screens/search/search2.dart';
import 'package:flutter_graduation_app/screens/search/search3Screen.dart';
import 'package:flutter_graduation_app/screens/signUpScreen.dart';
import 'package:flutter_graduation_app/screens/text.dart';
import 'package:flutter_graduation_app/screens/twoStepVerfication/twoStepVerfication.dart';
import 'package:flutter_graduation_app/screens/twoStepVerfication/twoStepVerfication2.dart';
import 'package:flutter_graduation_app/screens/twoStepVerfication/twoStepVerfication3.dart';
import 'package:flutter_graduation_app/screens/twoStepVerfication/twoStepVerfication4.dart';
import 'package:flutter_graduation_app/widgets/bottomnavigationScreen/applied.dart';
import 'package:flutter_graduation_app/widgets/bottomnavigationScreen/profile.dart';
import 'package:flutter_graduation_app/widgets/bottomnavigationScreen/saved/save2.dart';
import 'package:flutter_graduation_app/widgets/bottomnavigationScreen/saved/saved.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
     
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PageViewCubit()),
       
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:TextScreen()
        //onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}