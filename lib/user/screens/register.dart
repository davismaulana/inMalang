import 'package:flutter/material.dart';
import 'package:inmalang/component/shape.dart';
import 'package:inmalang/constant.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: kBack,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 30),
              width: size.width * 0.6,
              child: Image.asset(
                'assets/image/logo.png', 
              ),
            ),
            Shape(),
          ],
        ),
      ),
    );
  }
}
