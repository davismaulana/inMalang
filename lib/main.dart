import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:inmalang/auth_services.dart';
import 'package:inmalang/screens/login.dart';
import 'package:inmalang/wrapper.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.firebaseUserStream,
      initialData: null,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "InMalang",
        theme: ThemeData(
        // is not restarted.
        primaryColor: Colors.lightGreen),
        home: Wrapper(),
      ),
    );
  }
}
