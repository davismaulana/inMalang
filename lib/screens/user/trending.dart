import 'package:flutter/material.dart';
import 'package:inmalang/widget/user/body_trending_v1.dart';
import 'package:inmalang/widget/user/header_trending.dart';

class TrendingPage extends StatelessWidget {
  const TrendingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          HeaderTrending(),
          BodyTrendingV1(),
        ],
      ),
    );
  }
}
