import 'package:flutter/material.dart';
import '../screens/detail.dart';
import 'widgetlist.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          Widgetlist(
            title: "Hawai Waterpark",
            isi:
                "Hawai Waterpark Malang menawarkan beragam\nkeseruan untuk Harga tiket masuk Hawai Waterpark\nMalang juga masih relatif terjangkau. Tempat wisata\nini  memiliki banyak wahana permainan air yang\nasyik untuk dicoba. selengkapnya..",
            image: "assets/image/IMG-20220223-WA0107 1.png",
            press: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => const Detail()));
            },
          ),
          Widgetlist(
            title: "Hawai Waterpark",
            isi:
                "Hawai Waterpark Malang menawarkan beragam\nkeseruan untuk Harga tiket masuk Hawai Waterpark\nMalang juga masih relatif terjangkau. Tempat wisata\nini  memiliki banyak wahana permainan air yang\nasyik untuk dicoba. selengkapnya..",
            image: "assets/image/IMG-20220223-WA0107 1.png",
            press: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => const Detail()));
            },
          ),
          Widgetlist(
            title: "Hawai Waterpark",
            isi:
                "Hawai Waterpark Malang menawarkan beragam\nkeseruan untuk Harga tiket masuk Hawai Waterpark\nMalang juga masih relatif terjangkau. Tempat wisata\nini  memiliki banyak wahana permainan air yang\nasyik untuk dicoba. selengkapnya..",
            image: "assets/image/IMG-20220223-WA0107 1.png",
            press: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => const Detail()));
            },
          ),
          Widgetlist(
            title: "Hawai Waterpark",
            isi:
                "Hawai Waterpark Malang menawarkan beragam\nkeseruan untuk Harga tiket masuk Hawai Waterpark\nMalang juga masih relatif terjangkau. Tempat wisata\nini  memiliki banyak wahana permainan air yang\nasyik untuk dicoba. selengkapnya..",
            image: "assets/image/IMG-20220223-WA0107 1.png",
            press: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => const Detail()));
            },
          ),
          Widgetlist(
            title: "Hawai Waterpark",
            isi:
                "Hawai Waterpark Malang menawarkan beragam\nkeseruan untuk Harga tiket masuk Hawai Waterpark\nMalang juga masih relatif terjangkau. Tempat wisata\nini  memiliki banyak wahana permainan air yang\nasyik untuk dicoba. selengkapnya..",
            image: "assets/image/IMG-20220223-WA0107 1.png",
            press: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => const Detail()));
            },
          ),
        ],
      ),
    );
  }
}
