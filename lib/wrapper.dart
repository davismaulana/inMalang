import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:inmalang/screens/login.dart';
import 'package:inmalang/screens/user/navigator.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User? firebaseUser = Provider.of<User?>(context);
    return (firebaseUser == null) ? LoginScreen() : ScreenNav(user: firebaseUser);
  }
}