import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/text_styles.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:education_app/core/utils/widget.dart';
import 'package:education_app/ui/view/setup/verify_otp.dart';
import 'package:flutter/material.dart';

class ForgotPass extends StatelessWidget {
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
                'assets/images/forgot.png',
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
                   child: Text(Strings.forgot_pass,
                     style: AppTextStyles.blackButtonTextStyle(context),),
                 ),

                 SizedBox(
                   height: 20,
                 ),

                 Align(
                   alignment: Alignment.topLeft,
                   child: Text(Strings.forgot_desc,
                     style: AppTextStyles.regular16,),
                 ),
                 SizedBox(
                   height: 20,
                 ),

                 Container(

                   padding: EdgeInsets.only(top: 10,right: 5),
                   child: TextField(
                     textAlign: TextAlign.left,
                     keyboardType: TextInputType.number,
                     decoration: InputDecoration(
                       hintText: '+91 9354674477',
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

                 SizedBox(height: 30,),

                 Padding(
                   padding: const EdgeInsets.only(top:8.0),
                   child: customButton(context, Strings.next, AppColors.primaryColor, AppTextStyles.whiteButtonTextStyle, VerifyOtp()),
                 ),

               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
