// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class ResetPassController {

  String _email = '';

  ResetPassController (String email) {
    _email = email;
  }

  Future<bool> resetPass() async {

    bool reset = false;
    await Firebase.initializeApp();

    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: _email);
      reset = true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }

    return Future<bool>.value(reset);
  }
}