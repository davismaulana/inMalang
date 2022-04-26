import 'package:flutter/material.dart';
<<<<<<< HEAD:lib/screens/wishlist.dart
import 'package:inmalang/widget/header.dart';
import 'package:inmalang/widget/searchbar.dart';
=======
import 'package:inmalang/widget/user/header.dart';
import 'package:inmalang/widget/user/list.dart';
import 'package:inmalang/widget/user/searchbar.dart';
>>>>>>> 751659918c5da66512599e7c7177178e4d0089bc:lib/screens/user/wishlist.dart

class Wishlist extends StatelessWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [Header(), Search(),]),
    );
  }
}
