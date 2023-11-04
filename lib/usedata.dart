import 'package:flutter/material.dart';

class UserData extends ChangeNotifier {
  List<Map<String, String>> entries = [];

  void addEntry(String name, String email) {
    entries.add({'name': name, 'email': email});
    notifyListeners();
  }

  void clearEntries() {
    entries.clear();
    notifyListeners();
  }
}
