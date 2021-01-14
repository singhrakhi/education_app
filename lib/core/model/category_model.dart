class CategoryModel{
  String _courseName;
  String _totalCourse;
  var _icon;
  bool _isSubscribed;
  var id;

  CategoryModel(this._courseName, this._totalCourse, this._icon,
      this._isSubscribed);

  String get courseName=> _courseName;

  setCourseName(String value){
    _courseName = value;
  }

  String get totalCourse=> _totalCourse;

  setTotalCourse(String value){
    _totalCourse = value;
  }

  String get icon=> _icon;

  setIcon(String value){
    _icon = value;
  }

  bool get isSubscribed => _isSubscribed;

  setIsSubscribed(bool value){
    _isSubscribed = value;
  }

}