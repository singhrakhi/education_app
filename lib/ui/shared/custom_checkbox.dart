import 'package:education_app/core/res/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {

  bool isChecked;


  CustomCheckBox({this.isChecked});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: 150.0,
      color: Colors.transparent,
      child: Container(
          decoration: BoxDecoration(
              color:isChecked? AppColors.lightTextColor:Colors.black54,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),child: Icon(Icons.check_box),
          ),
    );
  }
}
