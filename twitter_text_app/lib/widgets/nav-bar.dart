import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text('TwitUser', 
            style: TextStyle(color: Colors.white,
            fontSize: 25,
            ),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/space1.jpg'),),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_balance_outlined),
            title: Text('About'),
            onTap: () => {Navigator.of(context).pop(),
              Navigator.pushNamed(context, '/about'),
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop(),
              Navigator.pushNamed(context, '/settings'),
            },
          ),
        ],
      ),
    );
  }
}