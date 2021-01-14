import 'package:education_app/core/model/course_model.dart';
import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/styles.dart';
import 'package:education_app/core/res/text_styles.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:education_app/core/utils/widget.dart';
import 'package:education_app/ui/shared/custom_appbar.dart';
import 'package:education_app/ui/shared/custom_button.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  String hintText;

  @override
  _MyProfileState createState() => _MyProfileState();

}

class _MyProfileState extends State<MyProfile> {
  double _height;
  double _width;


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

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(

            color: AppColors.white,
            child: Column(
              children: [
                CustomAppBar.buildAppBar(context: context,title: 'Profile'),

                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: _width / 3,
                      height: _width / 3,
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(10.0),
                        child: Container(
                            color: AppColors.greyColor,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(
                                Strings.userFaceIcon,
                              ),
                            )),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Charles J. Hebron',
                          style: TextStyle(
                              fontSize: Styles.appBarFontSize(context),
                              fontFamily: 'Poppins-Bold',
                              color: AppColors.black),
                        ),
                        Text(
                          'Public speaker, Entrepreneur',
                          style: TextStyle(
                            fontSize: Styles.smallTextSize(context),
                            fontFamily: 'Poppins-Light',
                            color: AppColors.black.withOpacity(.5),
                          ),
                        ),

                        Padding(padding: EdgeInsets.all(_width/10),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              CustomButton(text: '5.2k',myHeight: _width/6,myWidth: _width/6,
                                buttonColor: AppColors.orangeColor,icon: Icons.group,shadowColor: AppColors.lightOrange,),


                              CustomButton(text: '4.9',myHeight: _width/6,myWidth: _width/6,
                                buttonColor: AppColors.darkPrimaryColor,icon: Icons.star,),

                              CustomButton(text: '6.2k',myHeight: _width/6,myWidth: _width/6,
                                buttonColor: AppColors.orangeDarkColor,icon: Icons.favorite,shadowColor: AppColors.lightOrange,),

                            ],
                          )
                          ,),

                        Padding(padding: EdgeInsets.all(_width/20),
                          child:   Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Align(
                                alignment: Alignment.topLeft,
                                child:  Text(
                                  'Courses By Charles',
                                  style: TextStyle(
                                      fontSize: Styles.drawerHeadingFontSize(context),
                                      fontFamily: 'Poppins-Regular',
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w600),
                                ),

                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child:  Text(
                                  'See All',
                                  style: TextStyle(
                                    fontSize: Styles.labelTextSize(context),
                                    fontFamily: 'Poppins-Light',
                                    color: AppColors.black,
                                  ),
                                ),

                              ),
                            ],
                          ),),


                        Container(
                          color: AppColors.bgColor.withOpacity(.1),
                          height: _height/2,
                          margin: EdgeInsets.only(bottom: _height/20),
                          padding: EdgeInsets.only(top:5),
                          child: verticalList(context,_myList),
                        )

                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
