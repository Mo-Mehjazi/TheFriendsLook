// Flutter
import 'package:flutter/material.dart';

import '../controllers/db_controller.dart';
import '../widgets/user_drawer.dart';
import '../widgets/event_list.dart';
import '../models/event.dart';
import './event_page.dart';

class DiscoveryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var events = DbController().getAllEvents();

    return Scaffold(
      appBar: AppBar(
        title: Text('Discovery Page'),
      ),
      drawer: UserDrawer(),
      body: EventList(events, 'discovery', (Event event) {
        Navigator.pushNamed(context, '/event', arguments: EventPageArguments(event, 'discovery'));
      }),
    );
  }
}