// Flutter
import 'package:flutter/material.dart';

import '../controllers/user_controller.dart';
import '../controllers/db_controller.dart';
import '../widgets/user_drawer.dart';
import '../widgets/event_list.dart';
import '../models/event.dart';
import './event_page.dart';

class SubscriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var events = DbController().getSubscribedEvents(UserController().getCurrentUser().id);

    return Scaffold(
      appBar: AppBar(
        title: Text('Subscription Page'),
      ),
      drawer: UserDrawer(),
      body: EventList(events, (Event event) {
        Navigator.pushNamed(context, '/event', arguments: EventPageArguments(event, 'subscription'));
      }),
    );
  }
}