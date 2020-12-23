import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:education_app/core/res/text_styles.dart';
import 'package:education_app/core/utils/device_size.dart';
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
    new DrawerItem('My Course', Icons.arrow_forward,'See all my courses'),
    new DrawerItem('My profile', Icons.arrow_forward,'See my profile'),
    new DrawerItem('Payment card', Icons.arrow_forward,'Set or add payment card '),
    new DrawerItem('Wishlist', Icons.arrow_forward,'See all cart items'),
    new DrawerItem('Logout', Icons.logout,'')
  ];

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState.openEndDrawer();
  }

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
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add( ListTile(
        trailing: Icon(d.icon,color: AppColors.black,) ,
        title: Text(d.title,style: AppTextStyles.blackRegular16,),
        subtitle: Text(d.subTitle, style: AppTextStyles.normalLightFont14,),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }

    return Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            },
          ),
          title: Center(
              child: Text(
            Strings.home,
            style: AppTextStyles.medium20,
          )),
        ),
        body: Stack(
          children: [
            _getDrawerItemWidget(_selectedDrawerIndex),
          ],
        ),
        endDrawer: Drawer(
          child: new Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                  accountName: new Text("John Doe"), accountEmail: null),
              new Column(children: drawerOptions)
            ],
          ),
        ),
        endDrawerEnableOpenDragGesture: false,
        bottomNavigationBar: Container(
          color: AppColors.white,
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30), topLeft: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12, spreadRadius: 0, blurRadius: 1),
                ],
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  child: BottomNavigationBar(
                    items: <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                          icon: Image.asset('assets/images/home.png',
                              color: AppColors.primaryColor),
                          label: ''),
                      BottomNavigationBarItem(
                          icon:
                              Icon(Icons.bookmark, color: AppColors.primaryColor),
                          label: ''),
                      BottomNavigationBarItem(
                        icon: Stack(
                          children: [
                            Container(
                              width: 45,
                              height: 45,
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
                        label: '',
                      ),
                      BottomNavigationBarItem(
                          icon: Icon(
                            Icons.notifications,
                            color: AppColors.primaryColor,
                          ),
                          label: ''),
                      BottomNavigationBarItem(
                          activeIcon: Icon(
                            Icons.person,
                            color: AppColors.darkPrimaryColor,
                          ),
                          icon: Icon(
                            Icons.person,
                            color: AppColors.primaryColor,
                          ),
                          label: ''),
                    ],
                  ))),
        ));

    // Container(
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.only(
    //           topRight: Radius.circular(30), topLeft: Radius.circular(30)),
    //     ),
    //     child: ClipRRect(
    //       borderRadius: BorderRadius.only(
    //         topLeft: Radius.circular(20.0),
    //         topRight: Radius.circular(20.0),
    //       ),
    //       child: BottomNavigationBar(
    //         items: <BottomNavigationBarItem>[
    //           BottomNavigationBarItem(
    //               icon:  Image.asset(
    //                 'assets/images/home.png',
    //                   color: AppColors.primaryColor ),
    //               label: ''
    //           ),
    //           BottomNavigationBarItem(
    //               icon: Icon(Icons.bookmark, color: AppColors.primaryColor),
    //               label: ''
    //           ),
    //           BottomNavigationBarItem(
    //             icon: Stack(
    //               children: [
    //                 Container(
    //                   width: 45,
    //                   height: 45,
    //                   decoration: new BoxDecoration(
    //                     borderRadius: new BorderRadius.all( Radius.circular(15.0)),
    //                     gradient: new LinearGradient(
    //                       colors: [
    //                         AppColors.orangeColor,
    //                         AppColors.orangeDarkColor
    //                       ],
    //                     ),
    //                     boxShadow: [
    //                       BoxShadow(
    //                         color: AppColors.lightOrange.withOpacity(0.25),
    //                         spreadRadius: 2,
    //                         blurRadius: 3,
    //                         offset:
    //                             Offset(5, 5), // changes position of shadow
    //                       ),
    //                     ],
    //                   ),
    //                   child: Center(
    //                     child: Container(
    //                         height: 20,
    //                         width: 20,
    //                         decoration: new BoxDecoration(
    //                           borderRadius: new BorderRadius.all(
    //                               Radius.circular(5.0)),
    //                           gradient: new LinearGradient(
    //                             colors: [
    //                               AppColors.lightOrangeColor,
    //                               AppColors.lightOrangeColor
    //                             ],
    //                           ),
    //                         ),
    //                         child: Icon(
    //                           Icons.add,
    //                           size: 10,
    //                           color: AppColors.white,
    //                         )),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             label: '',
    //           ),
    //           BottomNavigationBarItem(
    //               icon: Icon(
    //                 Icons.notifications,
    //                 color: AppColors.primaryColor,
    //               ),
    //               label: ''
    //           ),
    //           BottomNavigationBarItem(
    //               activeIcon: Icon(
    //                 Icons.person,
    //                 color: AppColors.darkPrimaryColor,
    //               ),
    //               icon: Icon(
    //                 Icons.person,
    //                 color: AppColors.primaryColor,
    //               ),
    //               label: ''
    //           ),
    //         ],
    //       ),
    //     )));
  }
}
