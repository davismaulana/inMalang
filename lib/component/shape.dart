import 'package:flutter/material.dart';
import 'package:inmalang/constant.dart';
import 'package:inmalang/user/screens/navigator.dart';

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
              offset: Offset(4.0, 0.2))
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 25),
              child: Text(
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
              padding: EdgeInsets.only(left: 30, right: 30),
              margin: EdgeInsets.only(top: 15),
              child: Text(
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
              margin: EdgeInsets.only(left: 30, right: 30, top: 5),
              child: TextField(
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: new BorderSide(color: kTfield),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  contentPadding:
                      EdgeInsets.only(top: 11, bottom: 0, left: 13, right: 13),
                  fillColor: Color(0xFFE4E4E4),
                  filled: true,

                  // hintText: 'EMAIL',
                  // hintStyle: ,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 30, right: 30),
              margin: EdgeInsets.only(top: 5),
              child: Text(
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
              margin: EdgeInsets.only(left: 30, right: 30, top: 5),
              child: TextField(
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: new BorderSide(color: kTfield),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  contentPadding:
                      EdgeInsets.only(top: 11, bottom: 0, left: 13, right: 13),
                  fillColor: Color(0xFFE4E4E4),
                  filled: true,

                  // hintText: 'EMAIL',
                  // hintStyle: ,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 30, right: 30),
              margin: EdgeInsets.only(top: 5),
              child: Text(
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
              margin: EdgeInsets.only(left: 30, right: 30, top: 5),
              child: TextField(
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: new BorderSide(color: kTfield),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  contentPadding:
                      EdgeInsets.only(top: 11, bottom: 0, left: 13, right: 13),
                  fillColor: Color(0xFFE4E4E4),
                  filled: true,

                  // hintText: 'EMAIL',
                  // hintStyle: ,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 30, right: 30),
              margin: EdgeInsets.only(top: 5),
              child: Text(
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
              margin: EdgeInsets.only(left: 30, right: 30, top: 5),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                    borderSide: new BorderSide(color: kTfield),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  contentPadding:
                      EdgeInsets.only(top: 11, bottom: 8, left: 13, right: 13),
                  fillColor: Color(0xFFE4E4E4),
                  filled: true,

                  // hintText: 'EMAIL',
                  // hintStyle: ,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 30, right: 30),
              margin: EdgeInsets.only(top: 5),
              child: Text(
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
              margin: EdgeInsets.only(left: 30, right: 30, top: 5),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility_off),
                  //  border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: new BorderSide(color: kTfield),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  contentPadding:
                      EdgeInsets.only(top: 11, bottom: 8, left: 13, right: 13),
                  fillColor: Color(0xFFE4E4E4),
                  filled: true,

                  // hintText: 'EMAIL',
                  // hintStyle: ,
                ),
              ),
            ),
            Container(
                height: 40.0,
                width: 250,
                padding: EdgeInsets.only(left: 30, right: 30),
                margin: EdgeInsets.only(
                  top: 30,
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(40.0),
                  color: kButton,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(40.0))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ScreenNav();
                          },
                        ),
                      );
                    },
                    child: Center(
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
