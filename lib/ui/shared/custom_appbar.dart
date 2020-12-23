import 'package:education_app/core/res/styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar{
  static buildAppBar({BuildContext context,String title,double width}){
    return AppBar(
      backgroundColor: Colors.black,
      title:  Text(title, style: TextStyle(color: Colors.white, fontSize: Styles.appBarFontSize(context), fontFamily: 'Gilroy-Bold', fontWeight: FontWeight.w500),),
      centerTitle: true,
      elevation: 0,
    );
  }
}
