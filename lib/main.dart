// Flutter
import 'package:flutter/material.dart';
// Packages
import 'package:provider/provider.dart';
// Local
import './auth_page.dart';
import './events_page.dart';
import './event_provider.dart';
import './account_provider.dart';
import './user_drawer.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (BuildContext context) => EventProvider(),
        ),
        ChangeNotifierProvider(
          builder: (BuildContext context) => AccountProvider(),
        ),
      ],
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
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
