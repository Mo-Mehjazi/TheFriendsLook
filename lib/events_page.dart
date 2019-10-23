// Flutter
import 'package:flutter/material.dart';
// Local
import './event_card.dart';

class EventsPage extends StatelessWidget {
  final List<Event> events = [
    Event(
      'Grüner Abend',
      'Albert U.',
      'Hier sollte ein langer Beschreibungstext stehen, den habe ich mir aber gespart.',
      4,
      10,
      'Karlsruhe DHBW',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (BuildContext context, int index) {
          return EventCard(events[index]);
        },
      ),
    );
  }
}
