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
            offset: const Offset(0, 4),
          ),
        ],
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15)),
      ),
      margin: const EdgeInsets.only(left: 15, right: 15, top: 25),
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
                  margin: const EdgeInsets.only(left: 5, top: 5, right: 5),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5, top: 5, right: 5),
                  child: Text(
                    isi,
                    style: const TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 11,
                        fontWeight: FontWeight.w500),
                    maxLines: 4,
                  ),
                ),
                TextButton(
                  child: const Text(
                    "Rincian",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: press,
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(
                          Size(size.width * 0.72, size.height * 0.06)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).primaryColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(15)),
                      ))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
