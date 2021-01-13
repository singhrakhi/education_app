import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/styles.dart';
import 'package:education_app/core/res/text_styles.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:education_app/core/utils/widget.dart';
import 'package:education_app/ui/shared/custom_button.dart';
import 'package:education_app/ui/view/main/category_view.dart';
import 'package:flutter/material.dart';

class MyCourses extends StatefulWidget {
  @override
  _MyCoursesState createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  double _height;
  double _width;
  bool isCourseContent = true;
  bool isMoreContent = false;

  @override
  Widget build(BuildContext context) {
    _height = DeviceSize.height(context);
    _width = DeviceSize.width(context);

    return SingleChildScrollView(
        child: Container(
          color: AppColors.bgColor.withOpacity(.1),

      child: Column(
        children: [
          Container(
            color: AppColors.white,
            child: Column(
              children: [
                Container(
                  width: _width,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  height: DeviceSize.height(context) / 3.5,
                  child: Image.asset(
                    Strings.myCourseImg,
                  ),
                ),
                Text(
                  Strings.courseHeading,
                  style: AppTextStyles.blackButtonTextStyle(context),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      height: _width / 20,
                      width: _width / 20,
                      child: Image.asset(
                        Strings.premiumIcon,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      'Premium Course',
                      style: TextStyle(
                        fontSize: Styles.smallTextSize(context),
                        fontFamily: 'Poppins-Light',
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: _height / 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                      text: Strings.courseContent,
                      myHeight: _height / 18,
                      myWidth: _width / 2.5,
                      buttonColor: isCourseContent?AppColors.darkPrimaryColor:AppColors.white,
                      radius: _width / 30,
                      textColor: isCourseContent?AppColors.white:AppColors.black,
                      onTap: () {
                        setState(() {
                          isCourseContent = true;
                          isMoreContent = false;
                        });
                      },
                    ),
                    CustomButton(
                      text: Strings.more,
                      myHeight: _height / 18,
                      myWidth: _width / 4,
                      buttonColor: isMoreContent?AppColors.darkPrimaryColor:AppColors.white,
                      radius: _width / 30,
                      textColor: isMoreContent?AppColors.white:AppColors.black,
                      onTap: () {
                        setState(() {
                          isCourseContent = false;
                          isMoreContent = true;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: _height / 30,
                ),
              ],
            ),
          ),

          if(isCourseContent)
            Align(alignment: Alignment.topLeft, child: courseContent()),

          if(isMoreContent)
            Align(alignment: Alignment.topLeft, child: moreContent()),

        ],
      ),
    ));
  }

  Widget courseContent() {
    return Container(
      padding: EdgeInsets.only(left: _width/15,right: _width/15),
      height: _height / 3,
      child: myCourseContent(context, _height, _width),
    );
  }

  Widget moreContent() {
    return Container(
      color: AppColors.white,
      padding: EdgeInsets.only(left: _width/15,right: _width/15),
      height: _height / 3,
      child: Column(
        children: [
          profileItem(context,
              title: Strings.share,
              onPress: () {},
              buttonColor: AppColors.orangeColor,
              icon: Icons.share,
              iconColor: AppColors.orangeColor),

          profileItem(context,
              title: Strings.qa,
              onPress: () {},
              buttonColor: AppColors.purpleColor,
              assetIcon: Strings.commentImg,
              iconColor: AppColors.darkPrimaryColor),

          profileItem(context,
              title: Strings.resources,
              onPress: () {},
              buttonColor: AppColors.orangeDarkColor,
              assetIcon: Strings.menuNImg,
              iconColor: AppColors.orangeDarkColor),

          profileItem(context,
              title: Strings.category,
              onPress: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CategoryView()));

              },
              buttonColor: AppColors.blueLightColor,
              assetIcon: Strings.categIcon,
              iconColor: AppColors.blueColor),
        ],
      ),
    );
  }


}
