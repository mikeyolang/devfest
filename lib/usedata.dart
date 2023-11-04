import 'package:flutter/material.dart';

class UserData extends ChangeNotifier {
  String name = '';
  String email = '';

  void updateUserData(String name, String email) {
    this.name = name;
    this.email = email;
    notifyListeners();
  }
  void clearUserData() {
    name = '';
    email = '';
    notifyListeners();
  }
}
