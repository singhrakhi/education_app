import 'package:education_app/core/model/course_model.dart';
import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/text_styles.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:education_app/core/utils/widget.dart';
import 'package:flutter/material.dart';

class SavedFrag extends StatefulWidget {
  SavedFrag(this.hintText);

  String hintText;

  @override
  _SavedFragState createState() => _SavedFragState();
}

class _SavedFragState extends State<SavedFrag> {
  var _width;
  var _height;


  List<MyCourseModel> _myList=[];



  getCourseList(){

    _myList.add(new MyCourseModel(courseName: 'Business analysis \nfundamentals',img:  Strings.login_img,price: 'USD \$35.00'));
    _myList.add(new MyCourseModel(courseName: 'Business development \for startup',img:  Strings.login_img,price: 'USD \$36.00'));
    _myList.add(new MyCourseModel(courseName: 'The Art of Sales: Mastering \nthe Selling Process',img: Strings.aosIcon,price: 'USD \$50.00'));
    _myList.add(new MyCourseModel(courseName: 'Successful Negotiation: \nEssential Strategies and Skills',img:  Strings.rrIcon,price: 'USD \$35.00'));
    _myList.add(new MyCourseModel(courseName: 'Fundamentals of Project Planning and Management',img: Strings.aosIcon,price: 'USD \$50.00'));
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
    _width = DeviceSize.width(context);
    _height = DeviceSize.height(context);


    return SingleChildScrollView(
      child:Container(
        color: AppColors.bgColor.withOpacity(.03),
        child:  Column(
          children: [
            Container(
              height: _height / 13,
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
                      Strings.startup,
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: DeviceSize.width(context) / 24,
                        fontFamily: 'Poppins-Regular',
                      ),
                    ),
                    customRoundButton( context,icon: Icons.close,),
                  ],
                ),
              ),
            ),

            Container(
              height: _height/1.5,
              margin: EdgeInsets.only(bottom: _height/20),
              child: verticalList(context,_myList),
            )
          ],

        ),
      ),
    );
  }
}
