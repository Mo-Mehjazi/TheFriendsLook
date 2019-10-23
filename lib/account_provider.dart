import 'package:flutter/material.dart';

class AccountProvider extends ChangeNotifier {
  String _username = 'DerAdmin';
  String _email = 'admin@thefriendslook.de';

  String get username => _username;
  String get email => _email;
}