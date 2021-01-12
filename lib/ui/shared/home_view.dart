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

  @override
  Widget build(BuildContext context) {

    _height = DeviceSize.height(context);
    _width = DeviceSize.width(context);
    List<int> text = [1, 2];

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
                      style: AppTextStyles.medium20(context),
                    ),
                    customRoundButton(Icons.search, context),
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
             child: ListView.builder(

               scrollDirection: Axis.vertical,
               shrinkWrap: true,
               itemCount: 5,
               itemBuilder:(BuildContext context, int i){
                 return  Container(
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
                                     Strings.login_img,
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
                                   child: Text(Strings.home_any,
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
                                   child: Text(Strings.home_top_course,
                                     style: AppTextStyles.normalBoldFont12(context),),
                                 )
                               ],
                             ),
                           ),
                         ),

                         Container(
                             alignment: Alignment.bottomCenter,
                             child: customRoundButton(
                                 Icons.arrow_forward_ios, context)),

                       ],
                     ),
                   ),
                 );
               } ,

             ),
           )

          ],
        ),
      ),
    );
  }
}
