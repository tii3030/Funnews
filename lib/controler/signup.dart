import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class SignUpController {

  String _email = '';
  String _password = '';


  SignUpController (String email, String password) {
    _email = email;
    _password = password;
  }

  Future<bool> createUser() async {

    bool insert = false;

    try {
      
      await Firebase.initializeApp();
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _email,
        password: _password
      );

      insert = true;

    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    return Future<bool>.value(insert);
  }
}