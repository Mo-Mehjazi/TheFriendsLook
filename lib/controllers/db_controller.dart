import '../models/event.dart';
import '../models/user.dart';
import '../models/subscription.dart';
import '../util/fake_db_storage.dart';
import './user_controller.dart';

import 'package:collection/collection.dart';

class DbController {
  // Singleton
  static final DbController _singleton = DbController._internal();

  factory DbController() {
    return _singleton;
  }

  DbController._internal();

  // Fake database storage
  final FakeDbStorage dbStorage = FakeDbStorage();

  // Methods
  Event getEventById(int eventId) {
    return dbStorage.events[eventId];
  }

  User getUserById(int userId) {
    return dbStorage.users[userId];
  }

  User getAuthorForEvent(int eventId) {
    int userId = dbStorage.events[eventId].authorId;
    return dbStorage.users[userId];
  }

  List<Event> getAllEvents() {
    return dbStorage.events;
  }

  List<Event> getEventsForUser(int userId) {
    return dbStorage.events.where((e) => e.authorId == userId).toList();
  }

  List<Event> getSubscribedEvents(int userId) {
    var subscribtions =
        dbStorage.subscribtions.where((s) => s.userId == userId).toList();
    List<Event> events = [];

    for (var i = 0; i < subscribtions.length; ++i) {
      events.add(dbStorage.events[subscribtions[i].eventId]);
    }

    return events;
  }

  List<User> getSubscribersForEvent(int eventId) {
    var subscribtions =
        dbStorage.subscribtions.where((s) => s.eventId == eventId).toList();
    List<User> subscribers = [];

    for (var i = 0; i < subscribtions.length; ++i) {
      subscribers.add(dbStorage.users[subscribtions[i].userId]);
    }

    return subscribers;
  }

  void createEvent(Event event) {
    var newId = dbStorage.events.length;
    event.id = newId;

    dbStorage.events.add(event);
  }

  bool isSubscribed(int eventId) {
    return dbStorage.subscribtions.indexWhere((s) => s.eventId == eventId) >= 0;
  }

  void subscribe(int userId, int eventId) {
    // TODO: Check for event max subscribers

    dbStorage.subscribtions.add(Subscribtion(eventId, userId));
  }

  void unsubscribe(int userId, int eventId) {
    // TODO
  }

  // Please dont look at this code, my eyes are already bleeding
  Map<DateTime, List> fetchCalendarEvents() {
    final Map<DateTime, List> groupedEvents = groupBy(getSubscribedEvents(UserController().getCurrentUser().id), (event) => event.date);
    final Map<DateTime, List> result = {};

    groupedEvents.forEach((date, events) => {
      events.forEach((e) => {
        if (!result.containsKey(date)) {
          result[date] = new List()
        },

        result[date].add({
          'name': e.title,
          'isDone': false,
          'id': e.id
        })
      })
    });

    return result;
  }
}
