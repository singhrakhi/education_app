import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  double _height;
  double _width;

  @override
  Widget build(BuildContext context) {
    _height = DeviceSize.height(context);
    _width = DeviceSize.width(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: _height,
          width: _width,
          child: Column(
            children: [
              Container(
                width: _width / 6,
                height: _width / 6,
                child: ClipRRect(
                  borderRadius:
                  new BorderRadius.circular(10.0),
                  child: Container(
                      color: AppColors.greyColor,
                      child: Padding(
                        padding:
                        const EdgeInsets.all(0.0),
                        child: Image.asset(
                          Strings.userFaceIcon,
                          fit: BoxFit.fill,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
