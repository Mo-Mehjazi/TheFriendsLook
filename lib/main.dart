// Flutter
import 'package:flutter/material.dart';
// Local
import './auth_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: 'Open Sans',
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/':     (BuildContext context) => DemoPage(),
        '/auth': (BuildContext context) => AuthPage(),
        // ...
      },
    );
  }
}

class DemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Page'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Open Auth Page'),
              onPressed: () {
                Navigator.pushNamed(context, '/auth');
              },
            ),
          ],
        ),
      ),
    );
  }
}
