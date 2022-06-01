import 'package:flutter/material.dart';
import 'package:inmalang/screens/login.dart';

import '../../auth_services.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(  
              alignment: Alignment.center,
              margin: EdgeInsets.all(25),  
              child: FlatButton(  
                child: Text('Logout', style: TextStyle(fontSize: 20.0),),  
                color: Colors.blueAccent,  
                textColor: Colors.white,  
                onPressed: () async{
                  await AuthServices.signOut();
                  Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
                },  
              ),  
            ),  
          ],
        ),
      ),
    );
  }
}