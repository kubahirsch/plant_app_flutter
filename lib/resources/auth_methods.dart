import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zielonepogotowie/resources/storage_methods.dart';
import 'package:zielonepogotowie/utils/utils.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Map<String, dynamic>> getUserSnap() async {
    DocumentSnapshot userSnap =
        await _firestore.collection('users').doc(_auth.currentUser!.uid).get();
    print(_auth.currentUser!.uid);
    var snapshot = userSnap.data() as Map<String, dynamic>;
    return snapshot;
  }

  Future<String> signUp({
    required String email,
    required String password,
    required String username,
    required Uint8List profilePic,
  }) async {
    String res = 'Some error occured';
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          username.isNotEmpty ||
          profilePic.isNotEmpty) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        //adding to storage and getting download url
        String downloadUrl = await StorageMethods()
            .uploadImageToStorage('profilePics', profilePic);

        //adding to database

        await _firestore.collection('users').doc(cred.user!.uid).set({
          'uid': cred.user!.uid,
          'username': username,
          'email': email,
          'password': password,
          'profilePicUrl': downloadUrl,
        });
        res = 'success';
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        res = 'Your email is badly formated';
      }
      if (e.code == 'weak-password') {
        res = 'The password is too weak';
      }
      if (e.code == 'email-already-in-use') {
        res = 'This email is already in use ';
      }
      if (e.code == 'operation-not-allowed') {
        res = 'email/password accounts are not enabled';
      }
    } catch (err) {
      _auth.signOut();
      res = err.toString();
    }

    return res;
  }

  Future<String> SignIn(
      {required String email, required String password}) async {
    String res = 'Some error occured';

    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = 'success';
      } else {
        res = 'Please fill in all the fields';
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        res = 'Invalid email';
      }
      if (e.code == 'user-disabled') {
        res = 'User disabled';
      }
      if (e.code == 'user-not-found') {
        res = 'User not found';
      }
      if (e.code == 'wrong-password') {
        res = 'Wrong password';
      }
    } catch (e) {
      res = e.toString();
    }
    return res;
  }

  Future<void> signOut() async {
    try {
      _auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }
}
