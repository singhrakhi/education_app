import 'dart:async';

import 'package:education_app/core/model/base_model.dart';

class HomeViewModel extends BaseModel{

  bool _isHomeSelected = true;
  bool _isWishListSelected = false;
  bool _isAddNewSelected=false;
  bool _isNotifiSelected=false;
  bool _isProfileSelected=false;


  bool get isHomeSelected =>_isHomeSelected;

  setIsHomeSelected(bool value){
    _isHomeSelected = value;
    notifyListeners();
  }

  bool get isWishListSelected =>_isWishListSelected;

  setIsWishListSelected(bool value){
    _isWishListSelected = value;
    notifyListeners();
  }

  bool get isAddNewSelected =>_isAddNewSelected;

  setIsAddNewSelected(bool value){
    _isAddNewSelected = value;
    notifyListeners();
  }

  bool get isNotifiSelected =>_isNotifiSelected;

  setIsNotifiSelected(bool value){
    _isNotifiSelected = value;
    notifyListeners();
  }

  bool get isProfileSelected =>_isProfileSelected;

  setIsProfileSelected(bool value){
    _isProfileSelected = value;
    notifyListeners();
  }


}