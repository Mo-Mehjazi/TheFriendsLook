import 'package:flutter_test/flutter_test.dart';
import 'package:the_friends_look/account_provider.dart';

void main() {
  test('Fetch demo user', () {
    var provider = AccountProvider();
    
    var username = provider.username;
    var email = provider.email;

    expect(username, 'DerAdmin');
    expect(email, 'admin@thefriendslook.de');
  });
}