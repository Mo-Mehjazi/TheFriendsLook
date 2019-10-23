import 'package:flutter/material.dart';

class Event {
  String title;
  String author;
  String description;
  int numSubscribers;
  int maxSubscribers;
  String location;

  Event(this.title, this.author, this.description, this.numSubscribers,
      this.maxSubscribers, this.location);
}

class EventCard extends StatelessWidget {
  final Event event;

  EventCard(this.event);

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          Image.network(
            'https://i.pinimg.com/originals/6d/78/96/6d7896263c68fca18d1ee10e44dd4160.jpg',
            fit: BoxFit.fill,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      event.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Chip(
                      label: Text(event.author),
                      backgroundColor: Colors.white30,
                    ),
                    Chip(
                      backgroundColor: Colors.white30,
                      label: Text(
                        '${event.numSubscribers} / ${event.maxSubscribers}',
                        style: TextStyle(
                            //color: Colors.white,
                            //fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ],
                ),
                Text(
                  event.description,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      Text(
                        event.location,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white30,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white30,
            ),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),
    );
  }
}
