import 'package:app_movil/src/app/main/dashboard/ui/screens/Dahboard_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> dashboardNavigatorKey = GlobalKey();

class DashboardNavigatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: dashboardNavigatorKey,
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  DashboardScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                var begin = Offset(1.0, 0.0);
                var end = Offset.zero;
                var curve = Curves.ease;
                var tween = Tween(begin: begin, end: end)
                    .chain(CurveTween(curve: curve));

                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            );
            break;
        }
      },
    );
  }
}
