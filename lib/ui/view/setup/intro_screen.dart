import 'dart:async';

import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/text_styles.dart';
import 'package:education_app/core/utils/constatnts.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'file:///D:/project/education_app/lib/ui/view/setup/common_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final int _numPages = 3;
  int currentPage = 0;
  PageController _pageController = new PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 4), (Timer timer) {
      if (currentPage < 2) {
        currentPage++;
      } else {
        currentPage = 0;
      }

      _pageController.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,

      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: DeviceSize.height(context)-DeviceSize.height(context)/4,
                child: PageView(
                  controller: _pageController,
                  children: [
                    onBoardPage("f1",  Strings.intro_heading_1, Strings.intro_desc_1),
                    onBoardPage("f2", Strings.intro_heading_2, Strings.intro_desc_1),
                    onBoardPage("f3",Strings.intro_heading_3, Strings.intro_desc_1),
                    // onBoardPage("onBoard2", "Get on Time Delivery"),
                    // onBoardPage("onBoard4", "Pay Later"),
                  ],
                  onPageChanged: (value) => {setCurrentPage(value)},
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) => getIndicator(index))
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 100,
                height: 100,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: new LinearGradient(
                    colors: [AppColors.primaryColor, AppColors.darkPrimaryColor],
                  ),
                  boxShadow:  [
                    BoxShadow(
                      color: AppColors.primaryColor.withOpacity(0.25),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(5, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: FlatButton(
                  child: new Text(
                    Strings.next,
                    style:AppTextStyles.whiteButtonTextStyle,
                  ),
                  onPressed: changePage,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  AnimatedContainer getIndicator(int pageNo) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: 10,
        width: (currentPage == pageNo) ? 20 : 10,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: (currentPage == pageNo)
                ? AppColors.darkPrimaryColor
                : Colors.grey));
  }

  setCurrentPage(int value) {
    currentPage = value;
    setState(() {});
  }

  Column onBoardPage(String img, String title, String desc) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(30, 0.0, 0.0, 10.0),
        child: Container(
          height: DeviceSize.height(context)/2,
          child: Image.asset(
            'assets/images/$img.png',
            fit: BoxFit.fill,
          ),
        ),
      ),
          Text(
            title,
            style: AppTextStyles.blackButtonTextStyle(context),
            textAlign: TextAlign.center,

          ),
      Container(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30),
        child: Text(
          desc,
          style: AppTextStyles.normalFont17,
          textAlign: TextAlign.center,
        ),
      )
    ]);
  }

  void changePage() {
    print(currentPage);
    if (currentPage == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>CommonLogin()));
    } else {
      _pageController.animateToPage(currentPage + 1,
          duration: Duration(milliseconds: 300), curve: Curves.linear);
    }
  }
}
