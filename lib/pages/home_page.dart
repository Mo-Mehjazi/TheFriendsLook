// Flutter
import 'package:flutter/material.dart';
import '../widgets/user_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: UserDrawer(),
      body: Column(
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/Logo.JPG'),
          ),
        ],
      ),
    );
  }
}
