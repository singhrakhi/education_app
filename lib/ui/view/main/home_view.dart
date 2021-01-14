import 'package:education_app/core/model/course_model.dart';
import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/text_styles.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:education_app/core/utils/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeView extends StatefulWidget {
  HomeView(this.hintText);

  String hintText;


  @override
  _HomeViewState createState() => _HomeViewState();
}




class _HomeViewState extends State<HomeView> {

  var _height;
  var _width;

  List<MyCourseModel> _myList=[];



  getCourseList(){

    _myList.add(new MyCourseModel(courseName: 'Business analysis \nfundamentals',img:  Strings.login_img,price: 'USD \$35.00'));
    _myList.add(new MyCourseModel(courseName: 'Business development \for startup',img:  Strings.login_img,price: 'USD \$36.00'));
    _myList.add(new MyCourseModel(courseName: 'The Art of Sales: Mastering \nthe Selling Process',img: Strings.aosIcon,price: 'USD \$50.00'));
    _myList.add(new MyCourseModel(courseName: 'Successful Negotiation: \nEssential Strategies and Skills',img:  Strings.rrIcon,price: 'USD \$35.00'));

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getCourseList();

  }



  @override
  Widget build(BuildContext context) {

    _height = DeviceSize.height(context);
    _width = DeviceSize.width(context);

    return SingleChildScrollView(
      child:  Container(
        color: AppColors.bgColor.withOpacity(.03),

        child: Column(
          children: [
            Container(
              height: DeviceSize.height(context) / 13,
              margin: EdgeInsets.all( _height/35),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.all(
                    Radius.circular(_width/10),
                  )),
              child: Container(
                // margin: EdgeInsets.only(left: _width/30, top: _width/30, right: _width/30),
                padding: const EdgeInsets.all(10.0),
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.all(Radius.circular(_width/15),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      Strings.search,
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: DeviceSize.width(context) / 24,
                        fontFamily: 'Poppins-Regular',
                      ),
                    ),
                    customRoundButton( context,icon: Icons.search),
                  ],
                ),
              ),
            ),

            horizontalList(context),

            Container(
              width: _width,
              margin: EdgeInsets.all(10),
              child: Text(
                Strings.top_course,
                textAlign: TextAlign.left,
                style: AppTextStyles.homeTextStyle(context),
              ),
            ),

           Container(
             height: _height/4,
             margin: EdgeInsets.only(bottom: _height/20),
             child: verticalList(context,_myList),
           )

          ],
        ),
      ),
    );
  }
}
