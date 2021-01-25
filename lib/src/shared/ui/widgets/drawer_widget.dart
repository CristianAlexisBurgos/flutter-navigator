import 'package:app_movil/src/app/main/dashboard/ui/widgets/dashboard_navigator_widget.dart';
import 'package:app_movil/src/app/main/main_navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
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
          ),
          _createDrawerItem(
            icon: Icons.home,
            text: 'Inicio',
            onTap: () {
              Navigator.pop(context);
              // Navigator.pushReplacementNamed(context, '/');
              // Navigator.of(context).pushNamed('/');
              // mainNavigatorKey.currentState.pushReplacementNamed('main/');
              Navigator.pushReplacementNamed(context, 'main/');
              // Navigator.of(context).pushReplacementNamed('/main');
            },
          ),
          _createDrawerItem(
            icon: Icons.settings,
            text: 'Segundo',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/main/second');
              // Navigator.of(context).pushNamed('/');

              // mainNavigatorKey.currentState
              //     .pushReplacementNamed('/main/second');
              // Navigator.of(context).pushReplacementNamed('/main/second');
            },
          ),
        ],
      ),
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
