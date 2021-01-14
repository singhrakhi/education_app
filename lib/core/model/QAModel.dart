class QAModel{
  String userName;
  String createdDate;
  String myQuestion;
  String noOfLike;
  String noOfComment;
  String className;

  QAModel({this.userName, this.createdDate, this.myQuestion, this.noOfLike, this.noOfComment,
      this.className});

  String get name => userName;

  setName(String value){
    userName= value;
  }

  String get date => createdDate;

  setDate(String value){
    createdDate= value;
  }

  String get question => myQuestion;

  setQuestion(String value){
    myQuestion= value;
  }

  String get noLike => noOfLike;

  setNoLike(String value){
    noOfLike= value;
  }

  String get noComment => noOfComment;

  setNoComment(String value){
    noOfComment= value;
  }

  String get nameOfClass => className;

  setNameOfClass(String value){
    className= value;
  }





}