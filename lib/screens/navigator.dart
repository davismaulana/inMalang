import 'package:flutter/material.dart';
import 'package:inmalang/screens/home.dart';
import 'package:inmalang/screens/wishlist.dart';

class ScreenNav extends StatefulWidget {
  const ScreenNav({Key? key}) : super(key: key);

  @override
  _ScreenNavState createState() => _ScreenNavState();
}

class _ScreenNavState extends State<ScreenNav> {
  int _currentIndex = 0;

  final tabs = const [
    HomeWidget(),
    Center(child: Text("Trending")),
    Wishlist()
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
            icon: Icon(Icons.trending_up),
            label: "Trending",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo_rounded),
            label: "Wishlist",
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
