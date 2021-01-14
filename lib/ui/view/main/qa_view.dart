import 'package:education_app/core/model/QAModel.dart';
import 'package:education_app/core/utils/device_size.dart';
import 'package:education_app/core/utils/widget.dart';
import 'package:education_app/ui/shared/custom_appbar.dart';
import 'package:flutter/material.dart';

class QAView extends StatefulWidget {

  @override
  _QAViewState createState() => _QAViewState();
}

class _QAViewState extends State<QAView> {
  double _height;
  double _width;
  List<QAModel> _qaList =[];
  var userName =['Terry R. Segovia', 'Richard M. Coggins', 'Jay A. ','Richard M. Coggins', 'Jay A. '];
  var dateList =['14-01-2021', '13-01-2021', '23-06-2020', '13-01-2021', '23-06-2020'];
  var questionList =['How can I find the \nclass one video?', ''
      'How can I find the \nclass one video?', 'How can I find the \nclass one video?',
    'How can I find the \nclass one video?', 'How can I find the \nclass one video?'];
  var noOfLikesList =['12', '05', '22','05', '22'];
  var noOfCommentList =['05', '15', '16','15', '16'];
  var className =['Class 8', 'Class 6', 'Class 2','Class 6', 'Class 2'];

  getQAList(){

    int j=0;
    for (var i in userName){
      print(i);
      _qaList.add( new QAModel(userName: i, createdDate: dateList[j],myQuestion: questionList[j],
          noOfLike: noOfLikesList[j],noOfComment: noOfCommentList[j], className: className[j]));
      j++;
    }

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getQAList();

  }

  @override
  Widget build(BuildContext context) {
    _height = DeviceSize.height(context);
    _width = DeviceSize.width(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar.buildAppBar(context: context,title: 'Q&A'),

            qaContent(),
          ],
        ),
      ),
    );
  }


 Widget qaContent(){

    return Container(
      padding: EdgeInsets.only(left: _width/15,right: _width/15),
      height: _height/1.2 ,
      child: myQAContent(context, _height, _width,_qaList),
    );
  }

}


