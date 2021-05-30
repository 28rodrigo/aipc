import 'package:flutter/cupertino.dart';

class DataProvider extends ChangeNotifier {
  double _count = 0.8;
  double get count => _count;

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
}
