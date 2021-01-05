import 'dart:ffi';

import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/text_styles.dart';
import 'package:flutter/material.dart';
import 'constatnts.dart';
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

Widget customRoundButton(IconData icon, BuildContext context) {
  return ClipOval(
    child: Container(
      height: DeviceSize.height(context) / 17,
      width: DeviceSize.height(context) / 17,
      decoration: BoxDecoration(
        gradient: new LinearGradient(
          colors: [AppColors.orangeColor, AppColors.orangeDarkColor],
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.lightOrange.withOpacity(0.25),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(5, 5), // changes position of shadow
          ),
        ],
      ),
      child: Center(
          child: Icon(
        icon,
        color: AppColors.white,
      )),
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
  return Container(
      height: DeviceSize.height(context) /2.6,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  width: DeviceSize.width(context)/1.7,
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
                              style: AppTextStyles.blackRegular16,
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
                                  )
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left:5.0),
                                child: Text('5.2k',style: AppTextStyles.normalBoldFont12,),
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
                                  )
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left:5.0),
                                child: Text('4.8',style: AppTextStyles.normalBoldFont12,),
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
                                  )
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left:5.0),
                                child: Text('8.2k',style: AppTextStyles.normalBoldFont12,),
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
                  child:  Container(
                      width: DeviceSize.width(context) / 1.7,
                      alignment: Alignment.bottomCenter,
                      child: customRoundButton(Icons.arrow_forward_ios,context)
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  width: DeviceSize.width(context)/1.7,
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
                              style: AppTextStyles.blackRegular16,
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
                                  )
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left:5.0),
                                child: Text('5.2k',style: AppTextStyles.normalBoldFont12,),
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
                                  )
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left:5.0),
                                child: Text('4.8',style: AppTextStyles.normalBoldFont12,),
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
                                  )
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left:5.0),
                                child: Text('8.2k',style: AppTextStyles.normalBoldFont12,),
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
                  child:  Container(
                      width: DeviceSize.width(context) / 1.7,
                      alignment: Alignment.bottomCenter,
                      child: customRoundButton(Icons.arrow_forward_ios,context)
                  ),
                ),
              ],
            ),
          ),
        ],
      ));
}

Widget verticalList (BuildContext context){
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20.0),
    child: new ListView(
      children: <Widget>[
        Container(width: 160.0, color: Colors.red,),
        Container(width: 160.0, color: Colors.orange,),
        Container(width: 160.0, color: Colors.pink,),
        Container(width: 160.0, color: Colors.yellow,),
      ],
    )
);
}
