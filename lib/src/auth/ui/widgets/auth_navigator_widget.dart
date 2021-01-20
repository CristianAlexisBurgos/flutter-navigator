import 'package:app_movil/src/auth/ui/screens/LogIn_screen.dart';
import 'package:app_movil/src/auth/ui/screens/SignUp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthNavigatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: 'auth/login',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case 'auth/login':
            builder = (BuildContext _) => LogInScreen(
                  onLoginCompleted: () {
                    Navigator.of(context).pushReplacementNamed('/main');
                  },
                );
            break;
          case 'auth/signUp':
            builder = (BuildContext _) => SignUpScreen(
                  onLoginCompleted: () {
                    Navigator.of(context).pushReplacementNamed('/home');
                  },
                );
            break;
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
