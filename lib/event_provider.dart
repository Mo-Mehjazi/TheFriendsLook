// Flutter
import 'package:flutter/material.dart';
import 'package:the_friends_look/event_card.dart';

class EventProvider extends ChangeNotifier {
  final List<Event> _events = [
    Event(
      'Grillen im Garten',
      'MegaGrillMän',
      'Saftige Steaks und Krosse Krabben, hier gibt es nur das beste.',
      4,
      20,
      'https://i.pinimg.com/originals/6d/78/96/6d7896263c68fca18d1ee10e44dd4160.jpg',
    ),
    Event(
      'Fahrradfahren ._.',
      'Inge I.',
      'Ich mag Schmerzen. Deshalb fahre ich auf dem Mount Everest Fahrrad.',
      4,
      10,
      'https://www.spontacts.com/freizeitmagazin/wp-content/uploads/2018/04/freizeitaktivit%C3%A4ten-fr%C3%BChling_750x500-750x500.jpg',
    ),
    Event(
      'XBox Zock Session',
      'Albert U.',
      'Ganzen Tag chillen und zocken.',
      4,
      10,
      'https://static2.ubi.com/gamesites/rainbow6/rainbowsixsiege-bg.jpg',
    ),
    Event(
      'Grüner Abend 2',
      'Albert U.',
      'Hier sollte ein langer Beschreibungstext stehen, den habe ich mir aber gespart.',
      4,
      10,
      'https://i.pinimg.com/originals/6d/78/96/6d7896263c68fca18d1ee10e44dd4160.jpg',
    ),
  ];

  List<Event> get events => _events;
}