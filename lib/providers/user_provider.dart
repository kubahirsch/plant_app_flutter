import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zielonepogotowie/resources/auth_methods.dart';

class UserProvider extends ChangeNotifier {
  Map<String, dynamic>? userSnapshotAsMap;
  AuthMethods _authMethods = AuthMethods();

  Map<String, dynamic>? get getUserSnapAsMap => userSnapshotAsMap;

  Future<void> refreshUserSnap() async {
    userSnapshotAsMap = await _authMethods.getUserSnap();
    notifyListeners();
  }
}
