import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginController {

  String _email = '';
  String _password = '';


  LoginController (String email, String password) {
    _email = email;
    _password = password;
  }

  Future<bool> loginUser() async {

    bool loged = false;

    try {
      await Firebase.initializeApp();
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _email,
        password: _password
      );

      loged = true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }

    return Future<bool>.value(loged);
  }
}