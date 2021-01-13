import 'package:education_app/core/enums/viewstate.dart';
import 'package:flutter/foundation.dart';

class BaseModel with ChangeNotifier {
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  set state(ViewState viewState) {
    print('State:$viewState');
    _state = viewState;
    notifyListeners();
  }

  void update() {
    print("calling listner");
    notifyListeners();
  }
}
