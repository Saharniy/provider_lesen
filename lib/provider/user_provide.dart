import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String userName;
  int count;

  UserProvider({
    this.userName = 'map',
    this.count = 0,
  });

  void changeUsrName({
    required String newUserName,
  }) async {
    userName = newUserName;
    notifyListeners();
  }

  void userCountPlus() async {
    count = count + 1;
    notifyListeners();
  }

  void userCountMinus() async {
    count = count - 1;
    notifyListeners();
  }
}
