import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/styles.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:flutter/material.dart';

class CustomAppBar{
  static buildAppBar({BuildContext context, String title}) {
    var _width = DeviceSize.width(context);
    var _height = DeviceSize.height(context) / 13;

    return Container(
      height: _height,
      width: _width,
      child: Stack(
        children: [
          Container(
            width: DeviceSize.width(context)/6,
            height: DeviceSize.height(context) / 10,
            child:  IconButton(
              icon: Icon(Icons.arrow_back_ios, color: AppColors.black,),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          Container(
            width: _width,
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                  color: AppColors.black,
                  fontSize: Styles.appBarFontSize(context),
                  fontFamily: 'Poppins-Medium',
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }



  static buildAppBarHome({BuildContext context, String title}) {
    var _width = DeviceSize.width(context);
    var _height = DeviceSize.height(context) / 13;

    return Container(
      height: _height,
      width: _width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back_ios, color: AppColors.black,),
            onPressed: () => Navigator.pop(context),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                  color: AppColors.black,
                  fontSize: Styles.appBarFontSize(context),
                  fontFamily: 'Poppins-Medium',
                  fontWeight: FontWeight.w500),
            ),
          ),

          InkWell(
            onTap: (){
              // Navigator.of(context).pop();
            },
            splashColor: AppColors.greyColor,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset(
                Strings.menuIcon,
                height: 30,
                width:30,
                color: AppColors.black,
              ),
            ),

          ),
        ],
      ),
    );
  }


}
