import 'package:app_movil/src/app/main/dashboard/ui/widgets/dashboard_navigator_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainNavigatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (BuildContext _) => DashboardNavigatorWidget();
            break;
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
