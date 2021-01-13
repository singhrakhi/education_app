import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/styles.dart';
import 'package:education_app/core/res/text_styles.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:education_app/core/utils/widget.dart';
import 'package:education_app/ui/shared/custom_button.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  String hintText;

  @override
  _MyProfileState createState() => _MyProfileState();

  // MyProfile(this.hintText);
}

class _MyProfileState extends State<MyProfile> {
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
                Container(
                  padding: EdgeInsets.all(10),
                  width: _width / 3,
                  height: _width / 3,
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(10.0),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Charles J. Hebron',
                      style: TextStyle(
                          fontSize: Styles.appBarFontSize(context),
                          fontFamily: 'Poppins-Bold',
                          color: AppColors.black),
                    ),
                    Text(
                      'Public speaker, Entrepreneur',
                      style: TextStyle(
                          fontSize: Styles.smallTextSize(context),
                          fontFamily: 'Poppins-Light',
                          color: AppColors.black.withOpacity(.5),
                      ),
                    ),

                   Padding(padding: EdgeInsets.all(_width/10),
                   child:  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [

                       CustomButton(text: '5.2k',myHeight: _width/6,myWidth: _width/6,
                         buttonColor: AppColors.orangeColor,icon: Icons.group,),


                       CustomButton(text: '4.9',myHeight: _width/6,myWidth: _width/6,
                         buttonColor: AppColors.darkPrimaryColor,icon: Icons.star,),

                       CustomButton(text: '6.2k',myHeight: _width/6,myWidth: _width/6,
                         buttonColor: AppColors.orangeDarkColor,icon: Icons.favorite,),

                     ],
                   )
                     ,),

                    Padding(padding: EdgeInsets.all(_width/20),
                    child:   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                      Align(
                      alignment: Alignment.topLeft,
                      child:  Text(
                        'Courses By Charles',
                        style: TextStyle(
                            fontSize: Styles.drawerHeadingFontSize(context),
                            fontFamily: 'Poppins-Regular',
                            color: AppColors.black,
                            fontWeight: FontWeight.w600),
                      ),

                    ),
                        Align(
                          alignment: Alignment.topRight,
                          child:  Text(
                            'See All',
                            style: TextStyle(
                                fontSize: Styles.labelTextSize(context),
                                fontFamily: 'Poppins-Light',
                                color: AppColors.black,
                               ),
                          ),

                        ),
                  ],
                ),),



                    Container(
                      color: AppColors.bgColor.withOpacity(.1),
                      height: _height/2.7,
                      margin: EdgeInsets.only(bottom: _height/20),
                      padding: EdgeInsets.only(top:5),
                      child: verticalList(context),
                    )


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
