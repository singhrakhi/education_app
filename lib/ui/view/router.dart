import 'package:education_app/core/utils/constatnts.dart';
import 'package:education_app/ui/view/main/home.dart';
import 'package:education_app/ui/view/setup/forgot.dart';
import 'package:education_app/ui/view/setup/pass_success.dart';
import 'package:education_app/ui/view/setup/verify_otp.dart';
import 'file:///D:/project/education_app/lib/ui/view/setup/common_login.dart';
import 'file:///D:/project/education_app/lib/ui/view/setup/login.dart';
import 'file:///D:/project/education_app/lib/ui/view/setup/signup.dart';
import 'file:///D:/project/education_app/lib/ui/view/setup/splash.dart';
import 'package:flutter/material.dart';

import 'setup/intro_screen.dart';

class RouterApp {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final arguments = settings.arguments;
    switch (settings.name) {
      case Constants.SPLASH:
        return MaterialPageRoute(
            builder: (BuildContext context) => SplashScreen());
      case Constants.COMMON_LOGIN:
        return MaterialPageRoute(
            builder: (BuildContext context) => CommonLogin());
      case Constants.INTRO_SCREEN:
        return MaterialPageRoute(
            builder: (BuildContext context) => IntroScreen());
      case Constants.SIGN_IN:
        return MaterialPageRoute(
            builder: (BuildContext context) => Login());
      case Constants.VERIFY_OTP:
        return MaterialPageRoute(
            builder: (BuildContext context) => VerifyOtp());
      case Constants.FORGOT_PASS:
        return MaterialPageRoute(
            builder: (BuildContext context) => ForgotPass());
      case Constants.PASS_SUCCESS:
        return MaterialPageRoute(
            builder: (BuildContext context) => PassSuccess());
      case Constants.HOME:
        return MaterialPageRoute(
            builder: (BuildContext context) => Home());


      // case Constants.ResetPassword:
      //   String argument = settings.arguments;
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => ResetPassword(cellNumber: argument,));

      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => Scaffold(
            body: Center(
              child: Text('The Page ${settings.name} does not exists.'),
            ),
          ),
        );
    }
  }
}
