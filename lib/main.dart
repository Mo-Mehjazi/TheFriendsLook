// Flutter
import 'package:flutter/material.dart';
// Local
import './ui/auth_page.dart';
import './ui/events_page.dart';
import './ui/user_drawer.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        //fontFamily: 'Open Sans',
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => DemoPage(),
        '/auth': (BuildContext context) => AuthPage(),
        '/events': (BuildContext context) => EventsPage(),
        // ...
      },
    );
  }
}

class DemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Page'),
      ),
      drawer: UserDrawer(),
      body: Container(),
    );
  }
}
