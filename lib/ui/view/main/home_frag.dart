import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/text_styles.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:education_app/core/utils/widget.dart';
import 'package:flutter/material.dart';
class HomeFrag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              Container(
                height: DeviceSize.height(context) / 13,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.all(const Radius.circular(20.0),
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(Strings.search,style: AppTextStyles.regular16,),
                      customRoundButton(Icons.search,context),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
