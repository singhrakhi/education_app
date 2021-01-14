import 'dart:ffi';

import 'package:education_app/core/model/QAModel.dart';
import 'package:education_app/core/model/category_model.dart';
import 'package:education_app/core/model/course_content_model.dart';
import 'package:education_app/core/model/course_model.dart';
import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/styles.dart';
import 'package:education_app/core/res/text_styles.dart';
import 'package:education_app/ui/view/main/profile.dart';
import 'package:flutter/material.dart';
import 'constatnts.dart';
import 'package:education_app/ui/shared/custom_button.dart';
import 'device_size.dart';

Widget buttonWidget(BuildContext context, String name, Color color,
    TextStyle textStyle, var route) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: Constants.buttonPadding),
    child: Container(
      width: DeviceSize.width(context),
      height: 55,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 7), // changes position of shadow
          ),
        ],
      ),
      child: FlatButton(
        onPressed: () {
          navigationPage(context, route);
        },
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(Constants.borderRadius)),
        ),
        color: color,
        child: Text(
          name,
          style: textStyle,
        ),
      ),
    ),
  );
}

Widget customRoundButton( BuildContext context,{Function onPress, String assetIcon,IconData icon}) {

  var _height= DeviceSize.height(context) ;
  var _width= DeviceSize.height(context);
  return InkWell(

    onTap: onPress,
    child: ClipOval(
      child: Container(
        height: DeviceSize.height(context) / 20,
        width: DeviceSize.height(context) / 20,
        decoration: BoxDecoration(
          gradient: new LinearGradient(
            colors: [AppColors.orangeColor, AppColors.orangeDarkColor],
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.lightOrange,
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(5, 5), // changes position of shadow
            ),
          ],
        ),
        child: Center(
            child: icon!=null?Icon(
              icon,
              color: AppColors.white,
            ): Container(
              height: _width / 15,
              width: _width / 15,
              padding: EdgeInsets.all(3),
              child: Image.asset(
                assetIcon,
                fit: BoxFit.fill,
              ),
            )
        ),
      ),
    ),
  );
}

Widget customRoundedView(double mWidth,BuildContext mContext, String text,
    IconData icon, Color color){
  return  Container(
    width: mWidth / 6,
    height: mWidth / 6,

    decoration: new BoxDecoration(
        color: color,
        borderRadius: new BorderRadius.all(
          Radius.circular(mWidth/20),
        )),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon, color: Colors.white,size: 25,
        ),

        Text(
          text,
          style: TextStyle(
            fontSize: Styles.labelTextSize(mContext),
            fontFamily: 'Poppins-Regular',
            color: AppColors.white,
          ),
        ),
      ],
    ),

  );
}


Widget customButtonIcon(BuildContext context, Color color) {
  return Container(
      margin: EdgeInsets.only(top: 10),
      width: 100,
      height: 100,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        gradient: new LinearGradient(
          colors: [AppColors.primaryColor, AppColors.darkPrimaryColor],
        ),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.25),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(5, 5), // changes position of shadow
          ),
        ],
      ),
      child: Icon(
        Icons.done,
        color: AppColors.white,
      ));
}

Widget customButton(BuildContext context, String name, Color color,
    TextStyle textStyle, var route) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    width: 100,
    height: 100,
    decoration: new BoxDecoration(
      shape: BoxShape.circle,
      gradient: new LinearGradient(
        colors: [AppColors.primaryColor, AppColors.darkPrimaryColor],
      ),
      boxShadow: [
        BoxShadow(
          color: color.withOpacity(0.25),
          spreadRadius: 2,
          blurRadius: 3,
          offset: Offset(5, 5), // changes position of shadow
        ),
      ],
    ),
    child: FlatButton(
      child: new Text(
        name,
        style: textStyle,
      ),
      onPressed: () {
        navigationPage(context, route);
      },
    ),
  );
}

Widget customAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: AppColors.black,
      ),
      onPressed: () => Navigator.pop(context),
    ),
  );
}

void navigationPage(BuildContext context, var login) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => login,
      ));
}

void navigationPushReplacePage(BuildContext context, var login) {
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => login,
      ));
}

void _showAlertDialog(BuildContext context, String title, String message) {
  AlertDialog alertDialog = AlertDialog(
    title: Text(title),
    content: Text(message),
  );
  showDialog(context: context, builder: (_) => alertDialog);
}

Widget horizontalList(BuildContext context) {
  List<int> text = [1, 2, 3, 4];

  return Container(
      height: DeviceSize.height(context) / 2.8,
      child: new ListView(
        scrollDirection: Axis.horizontal,

          children:[
          for (var i in text)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    width: DeviceSize.width(context) / 1.7,
                    margin: EdgeInsets.only(bottom: 30),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                          topRight: const Radius.circular(20.0),
                          bottomRight: const Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primaryColor.withOpacity(0.16),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(5, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Digital marketing Master Course',
                                style: AppTextStyles.blackRegular16(context),
                              ),
                            ),
                            Icon(
                              Icons.bookmark,
                              color: AppColors.darkPrimaryColor,
                            ),
                          ],
                        ),
                        Container(
                          height: DeviceSize.height(context) / 9,
                          width: DeviceSize.width(context) / 4,
                          child: Image.asset(
                            'assets/images/f1.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.all(5),
                                    decoration: new BoxDecoration(
                                      color: AppColors.greyColor,
                                      borderRadius: new BorderRadius.all(
                                        const Radius.circular(5.0),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Icon(
                                        Icons.group_outlined,
                                        size: 20,
                                        color: AppColors.black,
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    '5.2k',
                                    style: AppTextStyles.normalBoldFont12(context),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.all(5),
                                    decoration: new BoxDecoration(
                                      color: AppColors.greyColor,
                                      borderRadius: new BorderRadius.all(
                                        const Radius.circular(5.0),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Icon(
                                        Icons.star,
                                        size: 20,
                                        color: AppColors.black,
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    '4.8',
                                    style: AppTextStyles.normalBoldFont12(context),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.all(5),
                                    decoration: new BoxDecoration(
                                      color: AppColors.greyColor,
                                      borderRadius: new BorderRadius.all(
                                        const Radius.circular(5.0),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Icon(
                                        Icons.favorite,
                                        size: 20,
                                        color: AppColors.black,
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    '8.2k',
                                    style: AppTextStyles.normalBoldFont12(context),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    child: Container(
                        width: DeviceSize.width(context) / 1.7,
                        alignment: Alignment.bottomCenter,
                        child: customRoundButton(
                          context,icon: Icons.arrow_forward_ios, )),
                  ),
                ],
              ),
            ),

        ],
      ));
}

Widget verticalList(BuildContext context, List<MyCourseModel> _myList,{Function onPress}){
  var _height = DeviceSize.height(context);
  var _width = DeviceSize.width(context);

  print(_myList.length);

  return ListView.builder(

    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: _myList.length,
    itemBuilder:(BuildContext context, int i){
      return InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyProfile()),
          );
        },
        splashColor: AppColors.greyColor,
        child: Container(
          height: _height/7,
          margin: EdgeInsets.only(left: 10,right: 10,bottom: 5),
          decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.all(Radius.circular(10),
              )
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: _width / 3,
                  height: _width / 5,

                  child: ClipRRect(
                    borderRadius:
                    new BorderRadius.circular(10.0),
                    child: Container(
                        color: AppColors.greyColor,
                        child: Padding(
                          padding:
                          const EdgeInsets.all(0.0),
                          child: Image.asset(
                            _myList[i].img,
                            fit: BoxFit.fill,
                          ),
                        )),
                  ),

                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(_myList[i].courseName,
                            style: AppTextStyles.blackRegular16(context),),
                        ),

                        Row(
                          children: [

                            Container(
                              height: _width / 25,
                              width: _width / 25,
                              child: Image.asset(
                                Strings.ratingIcon,
                                fit: BoxFit.fill,
                                color: AppColors.orangeColor,
                              ),
                            ),
                            Container(
                              height: _width / 25,
                              width: _width / 25,
                              child: Image.asset(
                                Strings.ratingIcon,
                                fit: BoxFit.fill,
                                color: AppColors.orangeColor,
                              ),
                            ),
                            Container(
                              height: _width / 25,
                              width: _width / 25,
                              child: Image.asset(
                                Strings.ratingIcon,
                                fit: BoxFit.fill,
                                color: AppColors.orangeColor,
                              ),
                            ),
                            Container(
                              height: _width / 25,
                              width: _width / 25,
                              child: Image.asset(
                                Strings.ratingIcon,
                                fit: BoxFit.fill,
                                color: AppColors.orangeColor,
                              ),
                            ),
                            Container(
                              height: _width / 25,
                              width: _width / 25,
                              child: Image.asset(
                                Strings.ratingIcon,
                                fit: BoxFit.fill,
                                color: AppColors.greyColor,
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(_myList[i].price,
                            style: AppTextStyles.normalBoldFont12(context),),
                        )
                      ],
                    ),
                  ),
                ),

                Container(
                    alignment: Alignment.bottomCenter,
                    child: customRoundButton(
                      context,icon:  Icons.arrow_forward_ios )),

              ],
            ),
          ),
        ),
      );
    } ,

  );
}

Widget profileItem(BuildContext context,{Function onPress, String title, String subtitle,
var buttonColor, var assetIcon,var iconColor, var icon }) {

  var _width = DeviceSize.width(context);

  return MaterialButton(
    //color: Colors.red,
    onPressed: onPress,
    highlightColor: Colors.grey,
    splashColor: Colors.grey,
    focusColor: Colors.grey,

    child: Container(
      width: DeviceSize.width(context),
      padding: EdgeInsets.all(10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            CustomButton(myHeight: _width/10,myWidth: _width/10,
              buttonColor: buttonColor.withOpacity(.2),
              assetIcon:assetIcon,iconColor: iconColor,
              radius: _width/40,icon: icon,),

            Expanded(child:Padding(padding: EdgeInsets.all(_width/30),
              child:
              Text(title,
                  style: TextStyle(
                    color: AppColors.black,
                    fontFamily: 'Poppins-Regular',
                    fontWeight: FontWeight.w600,
                    fontSize: Styles.drawerHeadingFontSize(context),
                  )
              ),
            ),
            ),


            if(title!=Strings.setting && title!=Strings.share && title!=Strings.qa && title!=Strings.resources && title!=Strings.category)
            Icon(Icons.arrow_forward_outlined,color: AppColors.black,)

          ],
        ),
      ),
    ),
  );
}


Widget myCourseContent(BuildContext context,var _height, _width,  List<CourseContentModel> _list){
  return ListView.builder(

      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: _list.length,
      itemBuilder:(BuildContext context, int i){
        return Container(
          height: _height/10,
          margin: EdgeInsets.only(bottom: _width/25),
          padding: EdgeInsets.only( left: _width/15),
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.all(Radius.circular(10),
            ),
          ),
          child: Stack(
            children: [
              Row(
                children: [
                  customRoundButton( context,icon: Icons.play_arrow_outlined),

                  Padding(
                    padding:  EdgeInsets.all(_width/20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(_list[i].heading,
                          style: AppTextStyles.normalBoldFont12(context),),
                        Text(_list[i].duration,
                          textAlign: TextAlign.left,
                          style: AppTextStyles.normalLight(context),),

                      ],
                    ),
                  ),


                ],
              ),
              Positioned(
                right: 5,
                top: _height/30,
                child:  Container(
                  margin: EdgeInsets.only(left: _width/5),
                  child: Icon(Icons.arrow_forward_ios,color: Colors.black,)),
              )
            ],
          ),
        );
      }
  );
}


Widget myContent(BuildContext context,var _height, _width, List<CategoryModel> model){
  return ListView.builder(

      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: model.length,
      itemBuilder:(BuildContext context, int i){
        return Container(
          height: _height/11.5,
          margin: EdgeInsets.only(bottom: _width/25),
          padding: EdgeInsets.only( left: _width/15),
          decoration: new BoxDecoration(
            color:  i==0?AppColors.white:AppColors.greyColor,
            borderRadius: new BorderRadius.all(Radius.circular(_width/35),
            ),
          ),
          child: Row(
            children: [

              CustomButton(myHeight: _width/10,myWidth: _width/10,
                buttonColor: i==0?AppColors.orangeColor:AppColors.purpleColor.withOpacity(.2),assetIcon: model[i].icon,
                shadowColor: AppColors.lightOrange,radius: _width/15,
                iconColor: i==0?AppColors.white:AppColors.black,),

              Padding(
                padding: EdgeInsets.all(_width/20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(model[i].courseName,
                      style: AppTextStyles.normalBoldFont12(context),),
                    Text((model[i].totalCourse),
                      textAlign: TextAlign.left,
                      style: AppTextStyles.normalLight(context),),
                  ],
                ),
              ),

              Expanded(
                child: Container(
                    margin: EdgeInsets.only(left: _width/5),
                    child: Icon(Icons.arrow_forward_ios,color: Colors.black,)),
              )

            ],
          ),
        );
      }
  );
}


Widget myResourcesContent(BuildContext context,var _height, _width, List<CategoryModel> model){
  return ListView.builder(

      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: model.length,
      itemBuilder:(BuildContext context, int i){
        return Container(
          height: _height/10,
          margin: EdgeInsets.only(bottom: _width/25),
          padding: EdgeInsets.only( left: _width/15),
          decoration: new BoxDecoration(
            color: AppColors.white,
            borderRadius: new BorderRadius.all(Radius.circular(_width/35),
            ),
          ),
          child: Row(
            children: [

              Container(
                  height: _width/15,
                  width: _width/15,
                  child: Image.asset(Strings.docIcon,color: AppColors.orangeDarkColor,)),
              Padding(
                padding: EdgeInsets.all(_width/20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(model[i].courseName,
                      style: AppTextStyles.normalBoldFont12(context),),

                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                          height: _width/30,
                          width: _width/30,
                          child: Image.asset(Strings.attachmentIcon,color: AppColors.black.withOpacity(.5),)),
                      Text((model[i].totalCourse),
                        textAlign: TextAlign.left,
                        style: AppTextStyles.normalLight(context),),
                    ],
                  )
                  ],
                ),
              ),

              Expanded(
                child: Container(
                  height: _width/20,
                    width: _width/20,
                    margin: EdgeInsets.only(left: _width/5),
                    child: Image.asset(Strings.down_arrowIcon,)),
              )

            ],
          ),
        );
      }
  );
}


Widget myQAContent(BuildContext context,var _height, _width, List<QAModel> model){
  return ListView.builder(

      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: model.length,
      itemBuilder:(BuildContext context, int i){
        return Container(
          height: _height/4,
          width: _width,

          margin: EdgeInsets.only(bottom: _width/25),
          padding: EdgeInsets.only( left: _width/15),
          decoration: new BoxDecoration(
            color: AppColors.white,
            borderRadius: new BorderRadius.all(Radius.circular(_width/35),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Container(
               width: _width,
               child: Stack(
                 children: [
                   Row(
                     children: [
                       Container(
                         padding: EdgeInsets.all(10),
                         width: _width / 5,
                         height: _width / 5,
                         child: ClipRRect(
                           borderRadius: new BorderRadius.circular(_width/30),
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

                       Padding(
                         padding: EdgeInsets.all(_width/20),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(model[i].name,
                               style: AppTextStyles.normalBoldFont12(context),),

                             Text((model[i].date),
                               textAlign: TextAlign.left,
                               style: AppTextStyles.normalLight(context),),
                           ],
                         ),
                       ),


                     ],
                   ),

                   Positioned(
                     right: 10,
                     child:  CustomButton(text: model[i].className,myWidth: _width/4,
                       myHeight: _width/13,buttonColor: AppColors.darkPrimaryColor,textColor: AppColors.white,),
                   )
                 ],
               ),
             ),


              Align(
                alignment: Alignment.topLeft,
                child: Text((model[i].myQuestion),
                  textAlign: TextAlign.left,
                  style:  TextStyle(
                    color: AppColors.black,
                    fontSize: DeviceSize.width(context) / 22,
                    fontFamily: 'Poppins-Bold',
                  ),
                ),
              ),

              Row(
                children: [
                  Icon(Icons.favorite_border,color: Colors.black26,size: 18,),

                 Padding(padding: EdgeInsets.only(left: 5),
                 child:  Text((model[i].noLike),
                   textAlign: TextAlign.left,
                   style:  TextStyle(
                     color: AppColors.black,
                     fontSize: DeviceSize.width(context) / 30,
                     fontFamily: 'Poppins-Light',
                   ),
                 ),
                 ),

                  SizedBox(width: _width/20,),

                  Container(
                    height: _width/25,
                    width: _width/25,
                    child: Image.asset(Strings.commentImg,),
                  ),

                  Padding(padding: EdgeInsets.only(left: 5),
                    child:  Text((model[i].noComment),
                      textAlign: TextAlign.left,
                      style:  TextStyle(
                        color: AppColors.black,
                        fontSize: DeviceSize.width(context) / 30,
                        fontFamily: 'Poppins-Light',
                      ),
                    ),
                  ),
                  SizedBox(width: _width/2,),
                Expanded(child: Icon(Icons.arrow_forward_outlined,color: Colors.black,size: _width/15,),)
                ],
              )
            ],
          ),
        );
      }
  );
}



