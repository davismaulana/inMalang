import 'package:flutter/material.dart';
import 'package:inmalang/widget/Header.dart';
import 'package:inmalang/widget/SearchBar.dart';
import 'package:inmalang/widget/list.dart';
import 'package:inmalang/widget/widgetlist.dart';


class Wishlist extends StatelessWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Header(),
        Search(),
        ListItem()
      ]),
    );
  }
}
