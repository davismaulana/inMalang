import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<void> signOut() async {
    _auth.signOut();

    return null; 
  }

  static Stream<User?> get firebaseUserStream => _auth.authStateChanges(); 
}