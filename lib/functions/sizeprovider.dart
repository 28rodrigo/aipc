import 'package:flutter/cupertino.dart';

class DataProvider extends ChangeNotifier {
  double _count = 0.8;
  int _gesture = 0;
  double get count => _count;
  int get gesture => _gesture;
  DataProvider();

  void incrementCount() {
    if (_count < 1.2) {
      _count += 0.2;
      notifyListeners();
    }
  }

  void decrementCount() {
    if (_count > 0.6) {
      _count -= 0.2;
      notifyListeners();
    }
  }

  void changeGesture() {
    if (_gesture == 0)
      _gesture = 1;
    else
      _gesture = 0;
  }
}
