// Flutter
import 'package:flutter/material.dart';
// Packages
import 'package:provider/provider.dart';
import 'package:the_friends_look/controllers/db_controller.dart';
import 'package:the_friends_look/models/event.dart';
// Local
import './event_card.dart';
import './user_drawer.dart';

class EventsPage extends StatelessWidget {
  final List<Event> events = DbController().getAllEvents();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Events'),
        ),
        drawer: UserDrawer(),
        body: ListView.builder(
          itemCount: events.length,
          itemBuilder: (BuildContext context, int index) {
            return EventCard(events[index], () {
              Navigator.pushNamed(context, '/event',
                  arguments: events[index]);
            });
          },
        ));
  }
}
