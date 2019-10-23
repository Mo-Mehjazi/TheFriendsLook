import 'package:flutter/material.dart';

const eventCardFontColor = Colors.black;
const eventCardWhiteColor = Colors.white38;

class Event {
  String title;
  String author;
  String description;
  int numSubscribers;
  int maxSubscribers;
  String imageUrl;

  Event(this.title, this.author, this.description, this.numSubscribers,
      this.maxSubscribers, this.imageUrl);
}

class EventCard extends StatelessWidget {
  final Event event;

  EventCard(this.event);

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        child: Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
            Image.network(
              event.imageUrl,
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
                          color: eventCardFontColor,
                        ),
                      ),
                      Chip(
                        label: Text(event.author),
                        backgroundColor: eventCardWhiteColor,
                      ),
                      Chip(
                        backgroundColor: eventCardWhiteColor,
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
                      color: eventCardFontColor,
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
                          color: eventCardFontColor,
                        ),
                        Text(
                          'View in Maps',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: eventCardFontColor,
                          ),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: eventCardWhiteColor,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: eventCardWhiteColor,
              ),
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),
    );
  }
}
