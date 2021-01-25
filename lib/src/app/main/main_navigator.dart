import 'package:app_movil/src/app/main/dashboard/ui/screens/Dahboard_screen.dart';
import 'package:app_movil/src/app/main/special_payment/ui/screens/Frequent_payment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainNavigatorWidget extends StatefulWidget {
  @override
  _MainNavigatorWidgetState createState() => _MainNavigatorWidgetState();
}

class _MainNavigatorWidgetState extends State<MainNavigatorWidget> {
  var _mainNavigatorKey = GlobalKey<NavigatorState>();
  var _seconNavigatorKey = GlobalKey<NavigatorState>();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          Navigator(
            key: _mainNavigatorKey,
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (route) => DashboardScreen(),
            ),
          ),
          Navigator(
            key: _seconNavigatorKey,
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (route) => FrequentPaymentScreen(),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            _createDrawerHeader(),
            _createDrawerItem(
              icon: Icons.home,
              text: 'Inicio',
              onTap: () {
                Navigator.pop(context);
                _mainNavigatorKey.currentState
                    .popUntil((route) => route.isFirst);
                setState(() => _currentIndex = 0);
              },
            ),
            _createDrawerItem(
              icon: Icons.settings,
              text: 'Segundo',
              onTap: () {
                Navigator.pop(context);
                _seconNavigatorKey.currentState
                    .popUntil((route) => route.isFirst);
                setState(() => _currentIndex = 1);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _createDrawerHeader() {
    return UserAccountsDrawerHeader(
      accountName: Text('Cristian Burgos'),
      accountEmail: Text('cristian.burgos.mojica@gmail.com'),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: Text(
          'C',
          style: TextStyle(fontSize: 40.0),
        ),
      ),
      decoration: BoxDecoration(color: Colors.blue),
    );
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: [
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
