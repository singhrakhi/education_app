// This class contains all themes and color constants
import 'package:education_app/core/utils/device_size.dart';
import 'package:flutter/cupertino.dart';

class Styles {

  static double appBarFontSize(BuildContext context){
      return DeviceSize.width(context)/20; //changed from 27 to 20 asked by client
  }

  static double drawerHeadingFontSize(BuildContext context){
    return DeviceSize.width(context)/22; //changed from 27 to 20 asked by client
  }

  static double labelTextSize(BuildContext context){
      return DeviceSize.width(context)/24;
  }

  static double stepperLabelTextSize(BuildContext context){
      return DeviceSize.width(context)/27.5;
  }

  static double registrationPageHeaderSize(BuildContext context){
      return DeviceSize.width(context)/18;
  }

  static double registrationPageSubtitleSize(BuildContext context){
      return DeviceSize.width(context)/34;
  }

 static double smallTextSize(BuildContext context){
      return DeviceSize.width(context)/30;
  }

 static double drawerItemsSize(BuildContext context){
      return DeviceSize.width(context)/20;
  }

  static double stepperTitleSize(BuildContext context){
      return DeviceSize.width(context)/45;
  }

  static double textFieldErrorSize(BuildContext context){
      return DeviceSize.width(context)/35;
  }

}