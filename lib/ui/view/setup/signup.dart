import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/text_styles.dart';
import 'package:education_app/core/utils/constatnts.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:education_app/core/utils/widget.dart';
import 'package:flutter/material.dart';

import '../main/home.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isSwitched = false;

  var textValue = Strings.save_pass;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppColors.black,),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              width: DeviceSize.width(context),
              height: DeviceSize.height(context)/3.3,
              child: Image.asset(
                'assets/images/login.png',
                fit: BoxFit.fill,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(Strings.name,
                      style: AppTextStyles.regular16,),
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 10,right: 5),
                    child: TextField(
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintStyle: AppTextStyles.regular16,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        fillColor: AppColors.greyColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(Strings.email,
                      style: AppTextStyles.regular16,),
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 10,right: 5),
                    child: TextField(
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintStyle: AppTextStyles.regular16,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        fillColor: AppColors.greyColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(Strings.password,
                      style: AppTextStyles.regular16,),
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 10,right: 5),
                    child: TextField(
                      textAlign: TextAlign.left,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintStyle: AppTextStyles.regular16,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        fillColor: AppColors.greyColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(Strings.save_pass, style: AppTextStyles.regular16,),

                   Switch(
                        onChanged: toggleSwitch,
                        value: isSwitched,
                        activeColor:AppColors.darkPrimaryColor,
                        activeTrackColor: AppColors.greyColor,
                        inactiveThumbColor: AppColors.darkPrimaryColor,
                        inactiveTrackColor: AppColors.greyColor,
                      ),

                  ],
                ),

                  customButton(context, Strings.sign_up, AppColors.primaryColor, AppTextStyles.whiteButtonTextStyle, Home()),

                  SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(Strings.already_have,
                        style: AppTextStyles.regular16,),

                      SizedBox(width: 3,),

                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacementNamed(context, Constants.SIGN_IN);
                        },
                        child: Text(Strings.login_in,
                          style: AppTextStyles.primarBold16(context),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void toggleSwitch(bool value) {

    if(isSwitched == false)
    {
      setState(() {
        isSwitched = true;
        // textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    }
    else
    {
      setState(() {
        isSwitched = false;
        // textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }
}
