import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:inmalang/widget/admin/addWisata.dart';

class Wisata extends StatefulWidget {
  const Wisata({Key? key}) : super(key: key);

  @override
  State<Wisata> createState() => _WisataState();
}

class _WisataState extends State<Wisata> {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference wisata = firestore.collection('wisata');

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.person_outline_sharp,
          color: Colors.blueAccent,
        ),
        title: const Text(
          'Hai Admin',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent),
        ),
        centerTitle: true,
      ),
      body: ListView(children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
            child: Container(
              padding:
                  const EdgeInsets.only(left: 5, right: 0, top: 5, bottom: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              height: 120,
              // width: 358,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(13.0),
                    child: Image.asset(
                      'assets/image/p.jpg',
                      scale: 0.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'New Brand Shoes',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          'SH-231',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10, top: 18),
                    child: const Icon(
                      Icons.delete_outline_outlined,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            )),
      ]),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddProd()));
          // print('p');
        },
        backgroundColor: Colors.blueAccent,
        label: const Text(
          'Tambah Wisata',
          style: TextStyle(color: Colors.white, fontFamily: 'Mulish'),
        ),
        icon: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
