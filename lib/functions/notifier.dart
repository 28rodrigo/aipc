import 'package:aipc/functions/contacto_data.dart';
import 'package:flutter/cupertino.dart';

class DataProvider extends ChangeNotifier {
  double _count = 0.8;
  double get count => _count;

  int _gesture = 0;
  int get gesture => _gesture;

  int _importados = 0;
  int get importados => _importados;

  int _tipoTeclado = 0;
  int get tipoTeclado => _tipoTeclado;

  Contactos _contactos = new Contactos();
  Contactos get contactos => _contactos;

  int _theme = 0;
  int get theme => _theme;

  DataProvider();

  void addContact() {
    _contactos.contactos
        .sort((a, b) => a.values.elementAt(1).compareTo(b.values.elementAt(1)));
    notifyListeners();
  }

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

  void changeImportados() {
    if (_importados == 0) _importados = 1;
  }

  void changeTheme(tipo) {
    if (_theme != tipo) _theme = tipo;
    notifyListeners();
  }

  void changeTipoTeclado(tipo) {
    if (_tipoTeclado != tipo) {
      _tipoTeclado = tipo;
    }
    notifyListeners();
  }
}
