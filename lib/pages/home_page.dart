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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/create');
        },
        child: Icon(Icons.add)
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 10
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset(
                'assets/images/Logo.JPG',
                scale: 3.5,
              ),
            ],
          )
        ],
      ),
    );
  }
}
