import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/text_styles.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:education_app/core/utils/widget.dart';
import 'file:///D:/project/education_app/lib/ui/view/setup/signup.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class CommonLogin extends StatelessWidget {
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: DeviceSize.height(context)/2.5,
              width: DeviceSize.width(context),
              child: Image.asset(
                'assets/images/login_top.png',
                fit: BoxFit.fill,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Text(Strings.welcome,
              style: AppTextStyles.blackButtonTextStyle(context),),
            ),
            Text(Strings.com_desc,
              style: AppTextStyles.normalFont17,),
            SizedBox(height:  DeviceSize.height(context) / 30),

            Padding(
              padding:  EdgeInsets.only(top:25.0),
              child: buttonWidget(context, Strings.sign_in, AppColors.darkPrimaryColor, AppTextStyles.whiteButtonTextStyle, Login()),
            ),
            SizedBox(height: 20),
            Text(Strings.or,
              style: AppTextStyles.blackButtonTextStyle(context),),
            SizedBox(height: 20),

            buttonWidget(context, Strings.sign_up, AppColors.lightOrange, AppTextStyles.whiteButtonTextStyle, Signup())

          ],
        ),
      ),
    );
  }
}
