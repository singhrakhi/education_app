import 'package:education_app/core/model/category_model.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:education_app/core/utils/widget.dart';
import 'package:education_app/ui/shared/custom_appbar.dart';
import 'package:flutter/material.dart';

class ResourcesView extends StatefulWidget {
  @override
  _ResourcesViewState createState() => _ResourcesViewState();
}

class _ResourcesViewState extends State<ResourcesView> {
  double _height;
  double _width;
  List<CategoryModel> categoryList = [];
  bool subscription = false;
  var courseName = ['Lecture 01','Lecture 11',' Lecture 12','Lecture 10','Lecture 05','Lecture 11',' Lecture 12','Lecture 10','Lecture 05'];
  var icon = [Strings.analyticsIcon,Strings.moneyIcon,Strings.controlsIcon,Strings.thumbsIcon,Strings.thumbsIcon,Strings.moneyIcon,Strings.controlsIcon,Strings.thumbsIcon,Strings.thumbsIcon];
  var totalCourse = ['2.3 MB','1.3 MB','6.3 MB' ,'7.6 MB','4.4 MB','4.3 MB','1.3 MB','6.3 MB' ,'7.6 MB','4.4 MB','4.3 MB'];

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
            CustomAppBar.buildAppBar(context: context,title: 'Resources'),

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
      child: myResourcesContent(context, _height, _width,categoryList),
    );
  }

}

