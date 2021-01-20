import 'package:flutter/foundation.dart';

class MyProvider with ChangeNotifier {
  String _miTexto = 'Texto inicial';

  String get miTexto => _miTexto;

  set miTexto(String nuevoTexto) {
    _miTexto = nuevoTexto;
    notifyListeners();
  }
}
