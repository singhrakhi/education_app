import 'package:education_app/core/model/category_model.dart';
import 'package:education_app/core/res/strings.dart';
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
  List<CategoryModel> categoryList = [];
  bool subscription = false;
  var courseName = ['Business','Finance',' Development','Social Media','Social Media'];
  var icon = [Strings.analyticsIcon,Strings.moneyIcon,Strings.controlsIcon,Strings.thumbsIcon,Strings.thumbsIcon];
  var totalCourse = ['122 Courses','453 Courses','888 Courses' ,'821 Courses','231 Courses','231 Courses'];

  getCategoryList(){

    subscription = true;

    int j=0;
    for (var i in courseName){
      print(i);
      categoryList.add( new CategoryModel(i, totalCourse[j],icon[j], subscription));
      j++;
    }

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getCategoryList();
  }

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

    print(categoryList.length);
    return Container(
      padding: EdgeInsets.only(left: _width/15,right: _width/15),
      height: _height/1.2 ,
      child: myContent(context, _height, _width,categoryList),
    );
  }
}
