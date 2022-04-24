import 'package:flutter/material.dart';

class HeaderTrending extends StatelessWidget {
  const HeaderTrending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 15, right: 10),
          height: 80,
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
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
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: Align(
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
