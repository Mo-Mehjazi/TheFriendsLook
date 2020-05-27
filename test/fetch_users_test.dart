import 'package:flutter_test/flutter_test.dart';
import 'package:the_friends_look/controllers/db_controller.dart';

void main() {
  test('Fetch demo user', () {
    var provider = DbController();
    
    var username = provider.getUserById(0).username;
    var email = provider.getUserById(0).email;

    expect(username, 'peter');
    expect(email, 'peter@gmail.com');
  });
}