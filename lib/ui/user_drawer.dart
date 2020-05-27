// Flutter
import 'package:flutter/material.dart';
// Packages
import 'package:the_friends_look/controllers/db_controller.dart';

class UserDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var nav = Navigator.of(context);
    var currentUser = DbController().getUserById(0);
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text(currentUser.email),
            accountName: Text(currentUser.username),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.deepPurple,
              child: Text('DE'),
            ),
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
