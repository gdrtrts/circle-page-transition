import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/ui/shared/globals.dart';

class HomeModel extends ChangeNotifier {
  int _index = 0;
  get index => _index;
  set index(value) {
    _index = value;
    notifyListeners();
  }

  bool _isHalfWay = false;
  get isHalfWay => _isHalfWay;
  set isHalfWay(value) {
    _isHalfWay = value;
    notifyListeners();
  }

  bool _isToggled = false;
  get isToggled => _isToggled;
  set isToggled(value) {
    _isToggled = value;
    notifyListeners();
  }

  void swapColors() {
    if (_isToggled) {
      _backGroundColor = Global.palette[1];
      _foreGroundColor = Global.palette[0];
    } else {
      _backGroundColor = Global.palette[0];
      _foreGroundColor = Global.palette[1];
    }
    notifyListeners();
  }

  Color _backGroundColor = Global.palette[0];
  get backGroundColor => _backGroundColor;
  set backGroundColor(value) {
    _backGroundColor = value;
    notifyListeners();
  }

  Color _foreGroundColor = Global.palette[1];
  get foreGroundColor => _foreGroundColor;
  set foreGroundColor(value) {
    _foreGroundColor = value;
    notifyListeners();
  }
}
