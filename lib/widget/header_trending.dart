import 'package:flutter/material.dart';
import 'package:inmalang/constant.dart';

class HeaderTrending extends StatelessWidget {
  const HeaderTrending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          color: kButton,
          height: 80,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: const Text(
                  'Trending',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Mulish "),
                ),
              )
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(20,20,20,10),
          child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Mari kita lihat apa yang\ntrending hari ini! 🔥',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.left,
              ),
            ),
        ),
      ],
    );
  }
}
