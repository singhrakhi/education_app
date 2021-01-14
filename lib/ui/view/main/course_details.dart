import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:education_app/ui/shared/custom_appbar.dart';
import 'package:flutter/material.dart';

class CourseDetailsView extends StatefulWidget {
  @override
  _CourseDetailsViewState createState() => _CourseDetailsViewState();
}

class _CourseDetailsViewState extends State<CourseDetailsView> {
  double _height;
  double _width;

  @override
  Widget build(BuildContext context) {
    _height = DeviceSize.height(context);
    _width = DeviceSize.width(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar.buildAppBar(context: context,title: 'Course'),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: _height/4,
                    width: _width,
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.all(
                          Radius.circular(_width/10),
                        )
                    ),

                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
