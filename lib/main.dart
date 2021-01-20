import 'package:app_movil/Splash_screen.dart';
import 'package:app_movil/src/app/main/main_navigator.dart';
import 'package:app_movil/src/auth/ui/widgets/auth_navigator_widget.dart';
import 'package:app_movil/src/app/main/special_payment/application/provider/frequent_payment_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MyProvider()),
        ChangeNotifierProvider(create: (_) => FrequentPaymentProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo App Fassil',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/main': (context) => MainNavigatorWidget(),
          '/auth': (context) => AuthNavigatorWidget(),
        },
      ),
    );
  }
}
