// Flutter
import 'package:flutter/material.dart';

import '../controllers/user_controller.dart';
import '../controllers/db_controller.dart';
import '../widgets/user_drawer.dart';
import '../widgets/event_list.dart';

class SubscriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var events = DbController().getSubscribedEvents(UserController().getCurrentUser().id);

    return Scaffold(
      appBar: AppBar(
        title: Text('Subscribtion Page'),
      ),
      drawer: UserDrawer(),
      body: EventList(events, (int eventId) {
        print("Selected event with id $eventId");
      }),
    );
  }
}