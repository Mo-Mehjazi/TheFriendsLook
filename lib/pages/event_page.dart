// Flutter
import 'package:flutter/material.dart';

import '../controllers/user_controller.dart';
import '../controllers/db_controller.dart';
import '../widgets/user_drawer.dart';
import '../widgets/event_list.dart';
import '../models/event.dart';

class EventPageArguments {
  final Event event;

  EventPageArguments(this.event);
}

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final EventPageArguments args = ModalRoute.of(context).settings.arguments;
    final title = args.event.title;

    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
      ),
      drawer: UserDrawer(),
      body: Text('$title'),
    );
  }
}