import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/styles.dart';
import 'package:education_app/core/res/text_styles.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:education_app/core/utils/responsive_ui.dart';
import 'package:education_app/ui/shared/custom_appbar.dart';
import 'package:education_app/ui/view/main/saved_frag.dart';
import 'file:///D:/project/education_app/lib/ui/view/main/home_frag.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'notification.dart';

class DrawerItem {
  String title;
  IconData icon;
  String subTitle;

  DrawerItem(this.title, this.icon, this.subTitle);
}

class Home extends StatefulWidget {



  final drawerItems = [
    new DrawerItem('My Course', Icons.arrow_forward, 'See all my courses'),
    new DrawerItem('My profile', Icons.arrow_forward, 'See my profile'),
    new DrawerItem(
        'Payment card', Icons.arrow_forward, 'Set or add payment card '),
    new DrawerItem('Wishlist', Icons.arrow_forward, 'See all cart items'),
    new DrawerItem('Logout', Icons.logout, '')
  ];

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool viewVisible = false;
  double _height;
  double _width;
  double _pixel;
  bool _isLarge;
  bool _orientation;
  bool _isMedium;
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new HomeFrag();
      case 1:
        return new SavedFrag();
      case 2:
        return new NotificationFrag();

      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    _height = DeviceSize.height(context);
    _width = DeviceSize.width(context);
    _pixel = MediaQuery.of(context).devicePixelRatio;
    _orientation = MediaQuery.of(context).orientation == Orientation.portrait;
    _isLarge = ResponsiveWidget.isScreenLarge(_width, _pixel);
    _isMedium = ResponsiveWidget.isScreenMedium(_width, _pixel);

    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(ListTile(
        trailing: Icon(
          d.icon,
          color: AppColors.black,
        ),
        title: Text(
          d.title,
          style: AppTextStyles.blackRegular16,
        ),
        subtitle: Text(
          d.subTitle,
          style: AppTextStyles.normalLightFont14,
        ),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }

    return Scaffold(
        backgroundColor: AppColors.white,
        body: _buildBody(),
    );
  }


  Widget _drawerItem({Function onPress, String title}) {
    return MaterialButton(
      minWidth: DeviceSize.width(context),
      //color: Colors.red,
      onPressed: onPress,
      highlightColor: Colors.grey,
      splashColor: Colors.grey,
      focusColor: Colors.grey,
      child: Align(
        alignment: Alignment.centerLeft,
        child: new Text(title,
            style: TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins-Regular",
              fontSize: Styles.drawerItemsSize(context),
            )),
      ),
    );
  }


  Widget _drawerView() {
    return SafeArea(
      child: Container(
        height: DeviceSize.height(context),
        width: DeviceSize.width(context),
        child: Stack(
          children: [
            // _getDrawerItemWidget(_selectedDrawerIndex),
            CustomAppBar.buildAppBarHome(context: context, title: Strings.home),

            Positioned(
                bottom: 0,
                child:  bottomView()),
          ],
        ),
      ),
    );
  }

  void showWidget() {
    setState(() {
      viewVisible = true;
    });
  }

  void hideWidget() {
    setState(() {
      viewVisible = false;
    });
  }

  Widget _buildBody() {
    return SafeArea(
      child: Container(
        height: DeviceSize.height(context),
        width: DeviceSize.width(context),
        child: Stack(
          children: [
            // _getDrawerItemWidget(_selectedDrawerIndex),
            Container(
              height: _height/10,
              width: _width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: AppColors.black,),
                    onPressed:(){},
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      Strings.home,
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: Styles.appBarFontSize(context),
                          fontFamily: 'Poppins-Medium',
                          fontWeight: FontWeight.w500),
                    ),
                  ),

                  InkWell(
                    onTap: showWidget,
                    splashColor: AppColors.greyColor,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        Strings.menuIcon,
                        height: 30,
                        width:30,
                        color: AppColors.black,
                      ),
                    ),

                  ),
                ],
              ),
            ),

            Positioned(
              top: 10,
              right: _width/7,
              child: Visibility(
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                visible: viewVisible,
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: _height-_height/6 ,
                  width: _width - _width / 5,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                     topLeft: const Radius.circular(20.0),
                      topRight: const Radius.circular(40.0),
                      bottomLeft: const Radius.circular(20.0),
                      bottomRight: const Radius.circular(40.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withOpacity(.1),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        height: _isLarge
                            ? _height / 3.7
                            : _isMedium
                            ? _height / 3.7
                            : _height / 3.5,
                        width: _width,
                        padding: EdgeInsets.only(
                            top: 10.0, left: 10, right: 10, bottom: 20),
                        child: Column(
                          children: <Widget>[
                            InkWell(
                                onTap: hideWidget,
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Icon(
                                    Icons.close,
                                    color: AppColors.black,
                                    size: DeviceSize.width(context) / 15,
                                  ),
                                )),
                            Column(
                              children: [
                                SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                  children: [
                                    Container(
                                      width: 70,
                                      height: 70,
                                      child: ClipRRect(
                                        borderRadius: new BorderRadius.circular(10.0),
                                        child: Container(
                                          color: AppColors.greyColor,
                                          child: Padding(
                                            padding: const EdgeInsets.all(0.0),
                                            child: Image.asset(
                                              Strings.userFaceIcon,
                                              fit: BoxFit.fill,
                                            ),
                                          )
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text('Alonzo A. Cain',style: TextStyle(
                                            fontSize: Styles.registrationPageHeaderSize(context),
                                            fontFamily: 'Poppins-Medium',
                                            color: AppColors.black
                                        ),),

                                        Text('AlonzoACain@gmail.com',style: TextStyle(
                                            fontSize: Styles.labelTextSize(context),
                                            fontFamily: 'Poppins-Medium',
                                          color: AppColors.black
                                        ),),
                                        Text('Phone - +91 9345545545',style: TextStyle(
                                            fontSize: Styles.stepperLabelTextSize(context),
                                            fontFamily: 'Poppins-Light',
                                            color: AppColors.black.withOpacity(.6)
                                        ),)
                                      ],
                                    )

                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),

           Positioned(
             bottom: 0,
             child:  bottomView()),
          ],
        ),
      ),
    );
  }

  Widget bottomView() {
    return Container(
      padding: EdgeInsets.all(10),
      width: DeviceSize.width(context),
      height: DeviceSize.height(context)/11,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
              color: Colors.black12, spreadRadius: 0, blurRadius: 1),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              print('clicked home');
            },
            splashColor: AppColors.greyColor,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset(
                Strings.homeIcon,
                color: AppColors.primaryColor,
                height: 20,
                width: 20,
              ),
            ),
          ),
          InkWell(
            onTap: (){
              print('clicked home');
            },
            splashColor: AppColors.greyColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                Strings.bookmarkIcon,
                color: AppColors.primaryColor,
                height: 20,
                width: 20,
              ),
            ),
          ),

          InkWell(
            onTap: (){
              print('clicked home');
            },
            splashColor: AppColors.greyColor,
            child: Stack(
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: new BoxDecoration(
                    borderRadius:
                    new BorderRadius.all(Radius.circular(15.0)),
                    gradient: new LinearGradient(
                      colors: [
                        AppColors.orangeColor,
                        AppColors.orangeDarkColor
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color:
                        AppColors.lightOrange.withOpacity(0.25),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(
                            5, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Container(
                        height: 20,
                        width: 20,
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.all(
                              Radius.circular(5.0)),
                          gradient: new LinearGradient(
                            colors: [
                              AppColors.lightOrangeColor,
                              AppColors.lightOrangeColor
                            ],
                          ),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 10,
                          color: AppColors.white,
                        )),
                  ),
                ),
              ],
            ),
          ),

          InkWell(
            onTap: (){
              print('clicked home');
            },
            splashColor: AppColors.greyColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                Strings.notificationIcon,
                color: AppColors.primaryColor,
                height: 20,
                width: 20,
              ),
            ),
          ),
          InkWell(
            onTap: (){},
            splashColor: AppColors.darkPrimaryColor,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset(
                Strings.userIcon,
                color: AppColors.primaryColor,
                height: 20,
                width: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

}
