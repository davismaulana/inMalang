import 'package:flutter/material.dart';
import 'package:inmalang/constant.dart';

import '../screens/navigator.dart';

class Shape extends StatelessWidget {
  const Shape({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 490,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              // spreadRadius: 5,
              blurRadius: 12.0,
              offset: const Offset(4.0, 0.2))
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 25),
              child: const Text(
                'REGISTER',
                style: TextStyle(
                    fontFamily: 'Mulish',
                    color: Colors.black87,
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    decoration: TextDecoration.none),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 30, right: 30),
              margin: const EdgeInsets.only(top: 15),
              child: const Text(
                'Nama',
                style: TextStyle(
                    fontFamily: 'Mulish',
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    decoration: TextDecoration.none),
              ),
            ),
            Container(
              height: 35,
              margin: const EdgeInsets.only(left: 30, right: 30, top: 5),
              child: TextField(
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: kTfield),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  contentPadding: const EdgeInsets.only(
                      top: 11, bottom: 0, left: 13, right: 13),
                  fillColor: fillColor,
                  filled: true,

                  // hintText: 'EMAIL',
                  // hintStyle: ,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 30, right: 30),
              margin: const EdgeInsets.only(top: 5),
              child: const Text(
                'Email',
                style: TextStyle(
                    fontFamily: 'Mulish',
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    decoration: TextDecoration.none),
              ),
            ),
            Container(
              height: 35,
              margin: const EdgeInsets.only(left: 30, right: 30, top: 5),
              child: TextField(
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: kTfield),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  contentPadding: const EdgeInsets.only(
                      top: 11, bottom: 0, left: 13, right: 13),
                  fillColor: fillColor,
                  filled: true,

                  // hintText: 'EMAIL',
                  // hintStyle: ,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 30, right: 30),
              margin: const EdgeInsets.only(top: 5),
              child: const Text(
                'Username',
                style: TextStyle(
                    fontFamily: 'Mulish',
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    decoration: TextDecoration.none),
              ),
            ),
            Container(
              height: 35,
              margin: const EdgeInsets.only(left: 30, right: 30, top: 5),
              child: TextField(
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: kTfield),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  contentPadding: const EdgeInsets.only(
                      top: 11, bottom: 0, left: 13, right: 13),
                  fillColor: fillColor,
                  filled: true,

                  // hintText: 'EMAIL',
                  // hintStyle: ,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 30, right: 30),
              margin: const EdgeInsets.only(top: 5),
              child: const Text(
                'Password',
                style: TextStyle(
                    fontFamily: 'Mulish',
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    decoration: TextDecoration.none),
              ),
            ),
            Container(
              height: 35,
              margin: const EdgeInsets.only(left: 30, right: 30, top: 5),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  suffixIcon: const Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: kTfield),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  contentPadding: const EdgeInsets.only(
                      top: 11, bottom: 8, left: 13, right: 13),
                  fillColor: fillColor,
                  filled: true,

                  // hintText: 'EMAIL',
                  // hintStyle: ,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 30, right: 30),
              margin: const EdgeInsets.only(top: 5),
              child: const Text(
                'Ulangi Password',
                style: TextStyle(
                    fontFamily: 'Mulish',
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    decoration: TextDecoration.none),
              ),
            ),
            Container(
              height: 35,
              margin: const EdgeInsets.only(left: 30, right: 30, top: 5),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.visibility_off),
                  //  border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: kTfield),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  contentPadding: const EdgeInsets.only(
                      top: 11, bottom: 8, left: 13, right: 13),
                  fillColor: fillColor,
                  filled: true,

                  // hintText: 'EMAIL',
                  // hintStyle: ,
                ),
              ),
            ),
            Container(
                height: 40.0,
                width: 250,
                padding: const EdgeInsets.only(left: 30, right: 30),
                margin: const EdgeInsets.only(
                  top: 30,
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(40.0),
                  color: kButton,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ScreenNav();
                          },
                        ),
                      );
                    },
                    child: const Center(
                      child: Text(
                        'Register ',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Mulish'),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
