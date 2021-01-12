import 'package:education_app/core/res/styles.dart';
import 'package:education_app/core/utils/constatnts.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle get medium14Black => TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );

  static TextStyle get black20TextStyle => TextStyle(
        fontSize: Constants.buttonFontSize20,
      );
  static TextStyle get blackTextStyle => TextStyle(
        fontSize: Constants.buttonFontSize20,
      );
  static TextStyle get white20TextStyle =>
      TextStyle(fontSize: Constants.buttonFontSize20, color: AppColors.white);
  static TextStyle get greyTextStyle =>
      TextStyle(fontSize: Constants.buttonFontSize20, color: AppColors.homeManagementTextColor);

  static TextStyle get buttonTextStyle =>
      TextStyle(color: AppColors.lightOrange, fontSize: Constants.largeFontSize24, fontFamily: 'Poppins-Medium',
        fontWeight: FontWeight.w700,);

  static TextStyle blackButtonTextStyle (BuildContext context){
    return TextStyle(color: AppColors.black, fontSize: 20, fontFamily: 'Poppins-Regular',
      fontWeight: FontWeight.w700,);
  }


  static TextStyle homeTextStyle (BuildContext context){
  return TextStyle(color: AppColors.black, fontSize: DeviceSize.width(context)/20, fontFamily: 'Poppins-Regular',
      fontWeight: FontWeight.w700,);
  }


  static TextStyle get whiteButtonTextStyle =>
      TextStyle(color: AppColors.white, fontSize: Constants.fontSize18, fontFamily: 'Poppins-Regular',
        fontWeight: FontWeight.w700,);

  static TextStyle blackRegular16 (BuildContext context){
   return TextStyle(color: AppColors.black, fontSize: DeviceSize.width(context)/30, fontFamily: 'Poppins-Regular',
      fontWeight: FontWeight.w700,);
  }

  static TextStyle get blackRegular16Underline =>
      TextStyle(color: AppColors.black, fontSize: Constants.fontSize16, fontFamily: 'Poppins-Regular',
        fontWeight: FontWeight.w700,decoration: TextDecoration.underline);

  static TextStyle get regular16 =>
      TextStyle( fontSize: Constants.fontSize16, fontFamily: 'Poppins-Regular',
        fontWeight: FontWeight.w400,);

  static TextStyle get regular20 =>
      TextStyle( fontSize: Constants.buttonFontSize20, fontFamily: 'Poppins-Regular',
        fontWeight: FontWeight.w400,);

  static TextStyle primarBold16 (BuildContext context){
    return TextStyle(color: AppColors.darkPrimaryColor, fontSize: DeviceSize.width(context)/26, fontFamily: 'Poppins-Bold',
      fontWeight: FontWeight.w700,);
  }

  static TextStyle medium20 (BuildContext context){
    TextStyle(color: AppColors.black, fontSize: DeviceSize.width(context)/22,fontFamily: 'Poppins-Bold',);
  }

  static TextStyle get normalFont17 =>
      TextStyle(color: AppColors.black, fontSize: Constants.fontSize17, fontFamily: 'Poppins-Light',
          fontWeight: FontWeight.w400);

  static TextStyle get normalLightFont14 =>
      TextStyle(color: AppColors.black, fontSize: Constants.fontSize14, fontFamily: 'Poppins-Light',
          fontWeight: FontWeight.w400);


  static TextStyle get normalBoldFont14 =>
      TextStyle(color: AppColors.black, fontSize: Constants.fontSize14, fontFamily: 'Poppins-SemiBold',
          fontWeight: FontWeight.w400);


  static TextStyle normalBoldFont12 (BuildContext context){
   return TextStyle(color: AppColors.black, fontSize: DeviceSize.width(context)/30, fontFamily: 'Poppins-SemiBold',
        fontWeight: FontWeight.w400);
  }

  static TextStyle get headingTextItalic30 =>
      TextStyle(color: AppColors.white, fontSize: 40, fontFamily: 'Poppins-Italic',
        fontWeight: FontWeight.w400,);

  static TextStyle get headingTextDarkItalic30 =>
      TextStyle(color: AppColors.mainFont, fontSize: 28, fontFamily: 'Poppins-SemiBold',
        fontWeight: FontWeight.w700,);

  static TextStyle get textExtraLargeTextStyle =>
      TextStyle(color: AppColors.lightOrange, fontSize: Constants.extraLargeFontSize30, fontFamily: 'Poppins-Bold',
        fontWeight: FontWeight.w700,);

  static TextStyle get textLargeTextStyle =>
      TextStyle(color: AppColors.black, fontSize: Constants.largeFontSize24, fontFamily: 'Poppins-Regular',
        fontWeight: FontWeight.w700,);
}
