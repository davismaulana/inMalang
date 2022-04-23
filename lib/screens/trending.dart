import 'package:flutter/material.dart';
import 'package:inmalang/widget/body_trending.dart';
import 'package:inmalang/widget/body_trending_v1.dart';
import 'package:inmalang/widget/header_trending.dart';

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
