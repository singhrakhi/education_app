import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/text_styles.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:education_app/core/utils/widget.dart';
import 'package:education_app/ui/view/setup/login.dart';
import 'package:flutter/material.dart';

class PassSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: customAppBar(context),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            width: DeviceSize.width(context),
            height: DeviceSize.height(context) / 3.3,
            child: Image.asset(
              'assets/images/pass_succ.png',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: DeviceSize.height(context) / 20,
          ),
          customButtonIcon(context, AppColors.primaryColor),
          SizedBox(
            height: DeviceSize.height(context) / 30,
          ),
          Text(
            Strings.successful,
            style: AppTextStyles.textLargeTextStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            Strings.pass_successful,
            style: AppTextStyles.regular20,
            textAlign: TextAlign.center,
          ),
          Container(
            height: DeviceSize.height(context) / 4,
            child: buttonWidget(
                context,
                Strings.get_started,
                AppColors.lightOrange,
                AppTextStyles.whiteButtonTextStyle,
                Login()),
            alignment: Alignment.bottomCenter,
          )
        ],
      ),
    );
  }
}
