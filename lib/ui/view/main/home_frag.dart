import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/text_styles.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:education_app/core/utils/widget.dart';
import 'package:flutter/material.dart';

class HomeFrag extends StatefulWidget {

  String hintText;

  HomeFrag(this.hintText);

  @override
  _HomeFragState createState() => _HomeFragState();
}

class _HomeFragState extends State<HomeFrag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

      children: [
        Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                height: DeviceSize.height(context) / 9,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.all(
                      const Radius.circular(20.0),
                    )),
                child: Container(
                  height: DeviceSize.height(context) / 13,
                  margin: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.all(
                        const Radius.circular(40.0),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Strings.search,
                        style: AppTextStyles.regular16,
                      ),
                      customRoundButton(Icons.search, context),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: DeviceSize.height(context) / 40,
              ),
              horizontalList(context),

              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  Strings.top_course,
                  style: AppTextStyles.blackButtonTextStyle(context),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // verticalList(context),
            ],
          ),
        )
      ],
      ),
    );
  }
}
