import './models/event.dart';
import './models/user.dart';

class DbController {
  // Singleton
  static DbController _controller;
  static DbController get instance => _controller;
  // Methods
  List<Event> getAllEvents() {
    return [];
  }

  List<Event> getEventForUser(User user) {
    return [];
  }

  List<Event> getSubscribedEvents(User user) {
    return [];
  }

  List<User> getSubscribersForEvent(Event event) {
    return [];
  }

  void createEvent(User user, Event event) {}
  void deleteEvent(Event event) {}
  void subscribe(User user, Event event) {}
  void unsubscribe(User user, Event event) {}
}