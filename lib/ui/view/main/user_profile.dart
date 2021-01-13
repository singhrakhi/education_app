import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/styles.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:education_app/core/utils/widget.dart';
import 'package:education_app/ui/shared/custom_button.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  double _height;
  double _width;

  @override
  Widget build(BuildContext context) {
    _height = DeviceSize.height(context);
    _width = DeviceSize.width(context);

    return SingleChildScrollView(
      child: Container(
        color: AppColors.white,
        child: Column(
          children: [
            Column(
              children: [

               Stack(
                 children: [
                   Container(
                     padding: EdgeInsets.all(10),
                     width: _width / 3,
                     height: _width / 3,
                     child: ClipRRect(
                       borderRadius: new BorderRadius.circular(_width/30),
                       child: Container(
                           color: AppColors.greyColor,
                           child: Padding(
                             padding: const EdgeInsets.all(5.0),
                             child: Image.asset(
                               Strings.userFaceIcon,
                             ),
                           )),
                     ),
                   ),

                   Positioned(
                       right: 0,
                       child: CustomButton(myHeight: _width/10,myWidth: _width/10,
                         buttonColor: AppColors.orangeDarkColor,assetIcon: Strings.editIcon,
                       iconColor: AppColors.white,))
                 ],

               ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Alonzo A. Cain',
                      style: TextStyle(
                          fontSize: Styles.appBarFontSize(context),
                          fontFamily: 'Poppins-Bold',
                          color: AppColors.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          height: _width/20,
                          width: _width/20,
                          child: Image.asset(
                            Strings.premiumIcon,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(
                          'Premium Account',
                          style: TextStyle(
                            fontSize: Styles.smallTextSize(context),
                            fontFamily: 'Poppins-Light',
                            color: AppColors.black.withOpacity(.5),
                          ),
                        ),
                      ],
                    ),


                    SizedBox(
                      height: _height/20,
                    ),

                    Padding(
                      padding: EdgeInsets.all(_width / 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomButton(
                            text: '74 Hours',
                            myHeight: _height / 14,
                            myWidth: _width / 3.6,
                            buttonColor: AppColors.darkPrimaryColor,
                            icon: Icons.watch_later_outlined,
                          ),
                          CustomButton(
                            text: '12 Courses',
                            myHeight: _height / 14,
                            myWidth: _width / 3.6,
                            buttonColor: AppColors.orangeDarkColor,
                            icon: Icons.library_books_outlined,
                          )
                        ],
                      ),
                    ),


                    SizedBox(
                      height: _height/20,
                    ),


                    profileItem(context,
                        title: Strings.setting,
                        onPress: () {},
                        buttonColor: AppColors.orangeColor,
                        assetIcon: Strings.settingIcon,
                        iconColor: AppColors.orangeColor),

                    profileItem(context,
                        title: Strings.account_sec,
                        onPress: () {},
                        buttonColor: AppColors.purpleColor,
                        assetIcon: Strings.verifiedIcon,
                        iconColor: AppColors.darkPrimaryColor),

                    profileItem(context,
                        title: Strings.download,
                        onPress: () {},
                        buttonColor: AppColors.orangeDarkColor,
                        assetIcon: Strings.down_arrowIcon,
                        iconColor: AppColors.orangeDarkColor),

                    profileItem(context,
                        title: Strings.learning_reminder,
                        onPress: () {},
                        buttonColor: AppColors.blueLightColor,
                        assetIcon: Strings.clockIcon,
                        iconColor: AppColors.blueColor),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
