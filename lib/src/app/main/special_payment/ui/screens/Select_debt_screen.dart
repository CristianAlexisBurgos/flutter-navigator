import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SelectDebtScreen extends HookWidget {
  final dynamic debt;

  SelectDebtScreen({Key key, @required this.debt});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pago Frecuente'),
      ),
      body: Container(
        child: Text('Contenido'),
      ),
    );
  }
}
