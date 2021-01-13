import 'package:education_app/core/utils/device_size.dart';
import 'package:education_app/core/utils/widget.dart';
import 'package:education_app/ui/shared/custom_appbar.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {

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
            CustomAppBar.buildAppBar(context: context,title: 'Categories'),


            courseContent()
          ],
        ),
      ),
    );
  }

  Widget courseContent() {
    return Container(
      padding: EdgeInsets.only(left: _width/15,right: _width/15),
      height: _height/1.2 ,
      child: myCourseContent(context, _height, _width),
    );
  }
}
