import 'package:flutter/material.dart';
import 'package:inmalang/widget/user/header.dart';
import 'package:inmalang/widget/user/list.dart';
import 'package:inmalang/widget/user/searchbar.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [Header(), Search(), ListItem()]),
    );
  }
}
