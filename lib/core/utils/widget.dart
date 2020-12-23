
import 'package:education_app/core/res/app_colors.dart';
import 'package:education_app/core/res/strings.dart';
import 'package:flutter/material.dart';
import 'constatnts.dart';
import 'device_size.dart';

Widget buttonWidget(BuildContext context, String name, Color color, TextStyle textStyle, var route){
   return Padding(
     padding:
     const EdgeInsets.symmetric(horizontal: Constants.buttonPadding),
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
         onPressed: (){
           navigationPage(context, route);
         },
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.all(
               Radius.circular(Constants.borderRadius)),
         ),
         color: color,
         child: Text(
           name,
           style:textStyle,
         ),
       ),
     ),
   );
}

Widget customRoundButton(IconData icon, BuildContext context){
  return ClipOval(
    child: Container(
      height: DeviceSize.height(context) / 17,
      width: DeviceSize.height(context) / 17,
      decoration: BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            AppColors.orangeColor,
            AppColors.orangeDarkColor
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.lightOrange.withOpacity(0.25),
            spreadRadius: 2,
            blurRadius: 3,
            offset:
            Offset(5, 5), // changes position of shadow
          ),
        ],
      ),
      child: Center(
          child: Icon(
            icon, color: AppColors.white,
          )),
    ),
  );
}

Widget customButtonIcon(BuildContext context, Color color){
  return Container(
    margin: EdgeInsets.only(top: 10),
    width: 100,
    height: 100,
    decoration: new BoxDecoration(
      shape: BoxShape.circle,
      gradient: new LinearGradient(
        colors: [AppColors.primaryColor, AppColors.darkPrimaryColor],
      ),
      boxShadow:  [
        BoxShadow(
          color: color.withOpacity(0.25),
          spreadRadius: 2,
          blurRadius: 3,
          offset: Offset(5, 5), // changes position of shadow
        ),
      ],
    ),
    child: Icon(
      Icons.done, color: AppColors.white,
    )
  );
}

Widget customButton(BuildContext context, String name, Color color, TextStyle textStyle, var route){
  return Container(
    margin: EdgeInsets.only(top: 10),
    width: 100,
    height: 100,
    decoration: new BoxDecoration(
      shape: BoxShape.circle,
      gradient: new LinearGradient(
        colors: [AppColors.primaryColor, AppColors.darkPrimaryColor],
      ),
      boxShadow:  [
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
      onPressed: (){
        navigationPage(context, route);
      },
    ),
  );

}

Widget customAppBar(BuildContext context){
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


void navigationPage(BuildContext context, var login ) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => login,
      ));
}

void navigationPushReplacePage(BuildContext context, var login ) {
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => login,
      ));
}

void _showAlertDialog(BuildContext context,String title, String message) {
  AlertDialog alertDialog = AlertDialog(
    title: Text(title),
    content: Text(message),
  );
  showDialog(
      context: context,
      builder: (_) => alertDialog
  );
}
