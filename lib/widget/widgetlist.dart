import 'package:flutter/material.dart';

class Widgetlist extends StatelessWidget {
  final String title;
  final String isi;
  final String image;
  final Function()? press;
  const Widgetlist({
    Key? key,
    required this.title,
    required this.isi,
    required this.image,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 0,
            blurRadius: 5,
            offset: Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(15),
            topRight: const Radius.circular(15),
            bottomLeft: const Radius.circular(15),
            bottomRight: const Radius.circular(15)),
      ),
      margin: EdgeInsets.only(left: 15, right: 15, top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: size.width * 0.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            width: size.width * 0.71,
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5, top: 5, right: 5),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5, top: 5, right: 5),
                  child: Text(
                    isi,
                    style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 11,
                        fontWeight: FontWeight.w500),
                    maxLines: 4,
                  ),
                ),
                Container(
                  height: 40.0,
                  width: 282,
                  margin: EdgeInsets.only(
                    top: 6,
                  ),
                  child: Material(
                    borderRadius: BorderRadius.only(
                        bottomRight: const Radius.circular(15)),
                    color:  Theme.of(context).primaryColor,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary:  Theme.of(context).primaryColor,
                      ),
                      onPressed: press,
                      child: Center(
                        child: Text(
                          'Rincian',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Mulish',
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
