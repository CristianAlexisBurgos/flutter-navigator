import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpScreen extends StatefulWidget {
  final VoidCallback onLoginCompleted;

  SignUpScreen({Key key, this.onLoginCompleted}) : super(key: key);

  @override
  _SignUpScreenState createState() => new _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 40.0, right: 40.0),
        child: Column(
          children: [
            Image.asset('assets/images/banners/logo_cabecera.png'),
            SizedBox(height: 50.0),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(255, 255, 255, 0.4),
                          width: 1.5,
                        ),
                      ),
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(255, 255, 255, 0.4),
                            width: 1.5,
                          )),
                      hintStyle: TextStyle(color: Colors.white),
                      hintText: 'Codigo de usuario',
                    ),
                    style: TextStyle(color: Colors.white),
                    validator: (value) {
                      if (value.isEmpty) return 'Campo obligatorio';
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(255, 255, 255, 0.4),
                          width: 1.5,
                        ),
                      ),
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(255, 255, 255, 0.4),
                            width: 1.5,
                          )),
                      hintStyle: TextStyle(color: Colors.white),
                      hintText: 'Contraseña',
                    ),
                    style: TextStyle(color: Colors.white),
                    validator: (value) {
                      if (value.isEmpty) return 'Campo obligatorio';
                      return null;
                    },
                  ),
                  SizedBox(height: 30.0),
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      child: Text('Registrar'),
                      color: Color.fromRGBO(7, 165, 161, 1),
                      onPressed: widget.onLoginCompleted,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Inicia Sesion',
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      backgroundColor: Color.fromRGBO(0, 44, 88, 1),
    );
  }
}
