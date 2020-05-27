// Flutter
import 'package:flutter/material.dart';
// Local
import './pages/home_page.dart';
import './pages/discovery_page.dart';
import './pages/subscription_page.dart';

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
        '/': (BuildContext context) => HomePage(),
        '/discover': (BuildContext context) => DiscoveryPage(),
        '/subscribed': (BuildContext context) => SubscriptionPage(),
        //'/auth': (BuildContext context) => AuthPage(),
        //'/events': (BuildContext context) => EventsPage(),
        // ...
      },
    );
  }
}
