import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:inmalang/screens/login.dart';
import 'package:inmalang/screens/user/home.dart';
import 'package:inmalang/screens/user/profile.dart';
import 'package:inmalang/screens/user/wishlist.dart';
import 'package:provider/provider.dart';

import '../../auth_services.dart';

class ScreenNav extends StatefulWidget {
  final User user;

  const ScreenNav({required this.user});

  @override
  _ScreenNavState createState() => _ScreenNavState();
}

class _ScreenNavState extends State<ScreenNav> {
  int _currentIndex = 0;
  
  late final tabs = [
    HomeWidget(
      user: widget.user,
    ),
    Wishlist(user: widget.user,),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Beranda",
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo_rounded),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: "Logout",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
