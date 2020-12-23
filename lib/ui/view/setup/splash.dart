import 'dart:async';
import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/text_styles.dart';
import 'package:education_app/core/utils/constatnts.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  var _visible = true;
  AnimationController animationController;
  Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() async{
    Navigator.pushReplacementNamed(context, Constants.INTRO_SCREEN);
  }

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(duration: new Duration(seconds: 2), vsync: this);
    animation =
    new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(

        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: animation.value * 130,
                    height: animation.value * 130,
                    child: Image.asset('assets/images/logo.png',)
                ),
              ],

            ),

          ),
          Container(
              alignment: Alignment.bottomCenter,
              child: Container(
                width:  MediaQuery.of(context).size.width/3,
                height:  MediaQuery.of(context).size.height/8,
                child: Image.asset('assets/images/logo_name.png',
                ),
              )
          ),
        ],

      ),
    );
  }
}
