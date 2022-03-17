import 'package:flutter/material.dart';
import 'package:inmalang/constant.dart';

class HeaderTrending extends StatelessWidget {
  const HeaderTrending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      color: kButton,
      height: 60,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
          ),
          const Text(
            'Trending',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: "Mulish "),
          )
        ],
      ),
    );
  }
}
