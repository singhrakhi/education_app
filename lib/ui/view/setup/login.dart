import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/text_styles.dart';
import 'package:education_app/core/utils/constatnts.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:education_app/core/utils/widget.dart';
import 'file:///D:/project/education_app/lib/ui/view/main/home.dart';
import 'package:flutter/material.dart';

import 'forgot.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: customAppBar(context),
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

                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPass()));
                    },
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(Strings.forgot_pass,
                        style: AppTextStyles.regular16,
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  customButton(context, Strings.login_in, AppColors.primaryColor, AppTextStyles.whiteButtonTextStyle, Home()),

                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(Strings.do_not_have_account,
                        style: AppTextStyles.regular16,),

                      SizedBox(width: 3,),

                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacementNamed(context, Constants.REGISTRATION);
                        },
                        child: Text(Strings.sign_up,
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
}
