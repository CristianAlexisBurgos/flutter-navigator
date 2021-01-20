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
              Navigator.pushReplacementNamed(context, '/');
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
