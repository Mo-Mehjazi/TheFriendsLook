// Flutter
import 'package:flutter/material.dart';

import '../models/event.dart';

class EventPageArguments {
  final Event event;
  final String imageTag;

  EventPageArguments(this.event, this.imageTag);
}

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final EventPageArguments args = ModalRoute.of(context).settings.arguments;
    final event = args.event;
    final imageTag = args.imageTag;

    return Scaffold(
      appBar: AppBar(
        title: Text(event.title),
      ),
      body: Column(
        children: <Widget>[
          Hero(
            tag: event.imageUrl + imageTag,
            child: Image.network(
              event.imageUrl,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
