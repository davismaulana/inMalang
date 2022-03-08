import 'package:flutter/material.dart';
import 'package:inmalang/user/screens/home.dart';
import 'package:inmalang/user/screens/wishlist.dart';

class ScreenNav extends StatefulWidget {
  const ScreenNav({ Key? key }) : super(key: key);

  @override
  _ScreenNavState createState() => _ScreenNavState();
}

class _ScreenNavState extends State<ScreenNav> {

  int _currentIndex = 0;

  final tabs = [
    HomeWidget(),
    Center(child:Text("Trending")),
    Wishlist()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Beranda"),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            title: Text("Trending"),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo_rounded),
            title: Text("Wishlist"),
          ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}