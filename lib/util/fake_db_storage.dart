import '../models/event.dart';
import '../models/user.dart';
import '../models/subscription.dart';

class FakeDbStorage {
  static final FakeDbStorage _singleton = FakeDbStorage._internal();

  factory FakeDbStorage() {
    return _singleton;
  }

  FakeDbStorage._internal();

  final List<Event> events = [
    Event(
      0,
      0,
      'Grillen im Garten',
      'Saftige Steaks und Krosse Krabben, hier gibt es nur das beste.',
      DateTime.now(),
      20,
      'https://i.pinimg.com/originals/6d/78/96/6d7896263c68fca18d1ee10e44dd4160.jpg',
    ),
    Event(
      1,
      0,
      'Fahrradfahren ._.',
      'Ich mag Schmerzen. Deshalb fahre ich auf dem Mount Everest Fahrrad.',
      DateTime.now(),
      10,
      'https://www.spontacts.com/freizeitmagazin/wp-content/uploads/2018/04/freizeitaktivit%C3%A4ten-fr%C3%BChling_750x500-750x500.jpg',
    ),
    Event(
      2,
      0,
      'XBox Zock Session',
      'Ganzen Tag chillen und zocken.',
      DateTime.now(),
      10,
      'https://static2.ubi.com/gamesites/rainbow6/rainbowsixsiege-bg.jpg',
    ),
    Event(
      3,
      0,
      'Grüner Abend 2',
      'Hier sollte ein langer Beschreibungstext stehen, den habe ich mir aber gespart.',
      DateTime.now(),
      10,
      'https://i.pinimg.com/originals/6d/78/96/6d7896263c68fca18d1ee10e44dd4160.jpg',
    ),
  ];

  final List<User> users = [
    User(
      0,
      "peter",
      "peter@gmail.com",
      "https://cdn.icon-icons.com/icons2/1736/PNG/512/4043260-avatar-male-man-portrait_113269.png"
    ),
    User(
      1,
      "ute",
      "ute@gmail.com",
      "https://cdn.icon-icons.com/icons2/1736/PNG/512/4043260-avatar-male-man-portrait_113269.png"
    ),
  ];

  final List<Subscribtion> subscribtions = [
    Subscribtion(
      0,
      1
    )
  ];
}