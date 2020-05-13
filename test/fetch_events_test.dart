import 'package:flutter_test/flutter_test.dart';
import 'package:the_friends_look/event_provider.dart';

void main() {
  test('Fetch data from database', () {
    var provider = EventProvider();
    var data = provider.fetchEventsFromDatabase();

    expect(data.length, 4);
  });

  test('Demo event is present', () {
    var provider = EventProvider();
    var data = provider.fetchEventsFromDatabase();

    expect(data[0].title, "Grillen im Garten");
  });
}