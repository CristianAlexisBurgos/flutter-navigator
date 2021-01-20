import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DynamicFormWidget extends HookWidget {
  final GlobalKey<FormState> formKey;

  DynamicFormWidget({Key key, @required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(hintText: 'Codigo de afiliado'),
            validator: (value) {
              if (value.isEmpty) return 'Campo obligatorio';
              return null;
            },
          ),
          SizedBox(height: 10.0),
          TextFormField(
            decoration: InputDecoration(hintText: 'Nombre'),
            validator: (value) {
              if (value.isEmpty) return 'Campo obligatorio';
              return null;
            },
          ),
          SizedBox(height: 10.0),
          TextFormField(
            decoration: InputDecoration(hintText: 'Concepto'),
            validator: (value) {
              if (value.isEmpty) return 'Campo obligatorio';
              return null;
            },
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
