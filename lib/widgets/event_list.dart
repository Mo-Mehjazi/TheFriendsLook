import 'package:flutter/material.dart';

import '../models/event.dart';
import './event_card.dart';

class EventList extends StatelessWidget {
  final List<Event> events;
  final String tag;
  final Function handleClick;

  EventList(this.events, this.tag, this.handleClick);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: events.length,
      itemBuilder: (BuildContext context, int index) {
        return EventCard(events[index], tag, () {
          this.handleClick(events[index]);
        });
      },
    );
  }
}
