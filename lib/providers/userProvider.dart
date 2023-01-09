import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flyin/controllers/authmethods.dart';
import 'package:flyin/models/user.dart';



class UserProvider with ChangeNotifier {
  UserInformation? _user;
  final AuthMethods _authMethods = AuthMethods();

  UserInformation get getUser => _user!;

  Future<void> refreshUser() async {
    UserInformation user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
