import 'package:flutter/material.dart';
import 'package:inmalang/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'inMalang',
        theme: ThemeData(
          // is not restarted.
          primarySwatch: Colors.lightGreen,
        ),
        debugShowCheckedModeBanner: false,
        home: const LoginScreen());
  }
}
