import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/utils/constatnts.dart';
import 'package:education_app/ui/view/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:  ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor:AppColors.white,
        accentColor: AppColors.lightOrange,

      ),
      onGenerateRoute: RouterApp.generateRoute,
      initialRoute: Constants.HOME,

    );
  }
}
