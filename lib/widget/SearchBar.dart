import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.only(left: 20, right: 20, top: 5),
      child: TextField(
        obscureText: false,
        decoration: InputDecoration(
          //  border: InputBorder.none,
          suffixIcon: Icon(
            Icons.search_rounded,
            color: Colors.grey[700],
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          contentPadding:
              EdgeInsets.only(top: 11, bottom: 8, left: 13, right: 13),
          fillColor: Color(0xFFE4E4E4),
          filled: true,

          hintText: 'Cari wishlist kamu...  ',
          // hintStyle: ,
        ),
      ),
    );
  }
}
