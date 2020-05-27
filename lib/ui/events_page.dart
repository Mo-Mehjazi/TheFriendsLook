// Flutter
import 'package:flutter/material.dart';
// Packages
import 'package:provider/provider.dart';
// Local
import './event_card.dart';
import '../event_provider.dart';
import './user_drawer.dart';

class EventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
      ),
      drawer: UserDrawer(),
      body: Consumer<EventProvider>(
        builder: (context, eventProvider, child) {
          return ListView.builder(
            itemCount: eventProvider.events.length,
            itemBuilder: (BuildContext context, int index) {
              return EventCard(eventProvider.events[index], () {
                Navigator.pushNamed(context, '/event',
                    arguments: eventProvider.events[index]);
              });
            },
          );
        },
      ),
    );
  }
}
