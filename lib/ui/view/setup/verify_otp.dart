import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/text_styles.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:education_app/core/utils/widget.dart';
import 'package:education_app/ui/view/setup/create_new_pass.dart';
import 'package:flutter/material.dart';

class VerifyOtp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: customAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              width: DeviceSize.width(context),
              height: DeviceSize.height(context) / 3.3,
              child: Image.asset(
                'assets/images/otp.png',
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
                      Strings.verify,
                      style: AppTextStyles.blackButtonTextStyle(context),
                    ),
                  ),
                  SizedBox(
                    height: DeviceSize.height(context)/30,
                  ),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      Strings.verify_desc,
                      style: AppTextStyles.regular16,
                    ),
                  ),
                  SizedBox(
                    height: DeviceSize.height(context)/16,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:20.0,right: 20.0),
                    child: PinCodeTextField(
                      appContext: context,
                      pastedTextStyle: AppTextStyles.regular16,
                      length: 4,
                      obscureText: false,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(8),
                        fieldHeight: DeviceSize.height(context)/16,
                        fieldWidth: DeviceSize.width(context)/6,
                        selectedFillColor: AppColors.greyColor,
                        activeColor: AppColors.greyColor,
                        inactiveColor: AppColors.greyColor,
                        selectedColor: AppColors.black,
                        inactiveFillColor: AppColors.greyColor
                      ),
                      enableActiveFill: false,
                      autoDisposeControllers: false,
                      keyboardType: TextInputType.number,
                      onCompleted: (v) {
                        print("Completed:$v");

                      }, onChanged: (String value) {  },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  Align(
                    alignment: Alignment.topRight,
                    child: Text(Strings.resend_code,
                      style: AppTextStyles.blackRegular16Underline,),
                  ),
                  customButton(context, Strings.submit, AppColors.primaryColor,
                      AppTextStyles.whiteButtonTextStyle, CreateNewPass()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
