import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  double _height;
  double _width;
  final Function onTap;
  final String text;
  final IconData icon;
  var assetIcon;
  var myWidth;
  var iconColor;
  var myHeight;
  Color buttonColor;
  Color shadowColor;

  var radius;
  var textColor;

  CustomButton(
      {this.onTap,
      this.text,
      this.icon,
      this.buttonColor,
      this.myHeight,
      this.myWidth,
      this.assetIcon,
      this.iconColor,
      this.radius,
      this.textColor,this.shadowColor});

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap,
      child: Container(
        width: myWidth,
        height: myHeight,
        decoration: new BoxDecoration(
            color: buttonColor,
            borderRadius: new BorderRadius.all(
              Radius.circular(radius!=null? radius :_width / 20),
            ),


        ),


        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            if(icon!=null || assetIcon!=null)

            assetIcon != null
                ? Container(
                    height: _width / 15,
                    width: _width / 15,
                    padding: EdgeInsets.all(3),
                    child: Image.asset(
                      assetIcon,
                      fit: BoxFit.fill,
                      color: iconColor,
                    ),
                  )
                : Icon(
                    icon,
                    color: iconColor != null ? iconColor : Colors.white,
                  ),
            if (text != null)
              Text(
                text,
                style: TextStyle(
                  fontSize: Styles.labelTextSize(context),
                  fontFamily: 'Poppins-Regular',
                  color: textColor!=null? textColor:AppColors.white,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
