import '../models/user.dart';
import './db_controller.dart';

class UserController {
  // Singleton
  static final UserController _singleton = UserController._internal();
  
  factory UserController() {
    return _singleton;
  }

  UserController._internal();

  User getCurrentUser() {
    return DbController().getUserById(1);
  }
}