// Flutter
import 'package:flutter/material.dart';
import '../controllers/user_controller.dart';

class UserDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var nav = Navigator.of(context);
    var currentUser = UserController().getCurrentUser();
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text(currentUser.email),
            accountName: Text(currentUser.username),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(currentUser.avatarUri),
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              nav.pushReplacementNamed('/');
            },
            leading: Icon(Icons.home),
          ),
          ListTile(
            title: Text('Calendar'),
            onTap: () {
              nav.pushReplacementNamed('/calendar');
            },
            leading: Icon(Icons.calendar_today),
          ),
          ListTile(
            title: Text('Discover Events'),
            onTap: () {
              nav.pushReplacementNamed('/discover');
            },
            leading: Icon(Icons.directions_boat),
          ),
          ListTile(
            title: Text('My Subscriptions'),
            onTap: () {
              nav.pushReplacementNamed('/subscribed');
            },
            leading: Icon(Icons.group_work),
          )
        ],
      ),
    );
  }
}
