import 'package:flutter_test/flutter_test.dart';
import 'package:the_friends_look/controllers/db_controller.dart';

void main() {
  test('Fetch data from database', () {
    var provider = DbController();
    var data = provider.getAllEvents();

    expect(data.length, 4);
  });

  test('Demo event is present', () {
    var provider = DbController();
    var data = provider.getAllEvents();

    expect(data[0].title, "Grillen im Garten");
  });
}