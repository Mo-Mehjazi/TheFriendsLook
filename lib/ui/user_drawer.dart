// Flutter
import 'package:flutter/material.dart';
// Packages
import 'package:provider/provider.dart';
// Local
import '../account_provider.dart';

class UserDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var nav = Navigator.of(context);
    return Drawer(
      child: ListView(
        children: <Widget>[
          Consumer<AccountProvider>(
            builder: (context, accountProvider, child) {
              return UserAccountsDrawerHeader(
                accountEmail: Text(accountProvider.email),
                accountName: Text(accountProvider.username),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  child: Text('DE'),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              nav.pop();
              nav.pushNamed('/');
            },
            leading: Icon(Icons.home),
          ),
          ListTile(
            title: Text('My Events'),
            onTap: () {
              nav.pop();
              nav.pushNamed('/events');
            },
            leading: Icon(Icons.calendar_today),
          ),
          Divider(),
          ListTile(
            title: Text('Login Page'),
            onTap: () {
              // nav.pop();
              nav.pushNamed('/auth');
            },
            leading: Icon(Icons.group_work),
          )
        ],
      ),
    );
  }
}
