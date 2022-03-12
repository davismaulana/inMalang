import 'package:flutter/material.dart';
import 'package:inmalang/constant.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      height: 60,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: kBorderSear,
              size: 30,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: const Text(
              'Whishlist',
              style: TextStyle(
                  color: kBorderSear,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Mulish "),
            ),
          )
        ],
      ),
    );
  }
}
