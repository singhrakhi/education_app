import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/text_styles.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:education_app/core/utils/widget.dart';
import 'package:education_app/ui/view/setup/pass_success.dart';
import 'package:flutter/material.dart';

class CreateNewPass extends StatelessWidget {
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
            SizedBox(
              height: 10,
            ),

            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      Strings.create_new,
                      style: AppTextStyles.blackButtonTextStyle(context),
                    ),
                  ),
                  SizedBox(
                    height: DeviceSize.height(context)/20,
                  ),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(Strings.new_pass,
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

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(Strings.confirm_new_pass,
                      style: AppTextStyles.regular16,),
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 10,right: 5),
                    child: TextField(
                      obscureText: true,
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


             SizedBox(
               height: DeviceSize.height(context)/30,
             ),


                  customButton(context, Strings.done, AppColors.primaryColor,
                      AppTextStyles.whiteButtonTextStyle, PassSuccess()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
