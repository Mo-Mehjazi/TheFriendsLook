// Flutter
import 'package:flutter/material.dart';

import '../controllers/db_controller.dart';
import '../widgets/user_drawer.dart';
import '../widgets/event_list.dart';

class DiscoveryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var events = DbController().getAllEvents();

    return Scaffold(
      appBar: AppBar(
        title: Text('Discovery Page'),
      ),
      drawer: UserDrawer(),
      body: EventList(events, (int eventId) {
        print("Selected event with id $eventId");
      }),
    );
  }
}