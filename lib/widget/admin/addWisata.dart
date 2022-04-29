import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:inmalang/screens/admin/wisata.dart';

class AddProd extends StatefulWidget {
  const AddProd({Key? key}) : super(key: key);

  @override
  State<AddProd> createState() => _AddProdState();
}

class _AddProdState extends State<AddProd> {
  var nama = TextEditingController();
  var category = TextEditingController();
  var deskripsi = TextEditingController();
  var lokasi = TextEditingController();
  var waktu = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference wisata = firestore.collection('wisata');
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.blueAccent,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Wisata()));
          },
        ),
        title: const Text(
          'Tambah Wisata',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 15,
          right: 15,
        ),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            const Center(
              child: Text(
                'Tambah Wisata ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  fontSize: 18,
                ),
              ),
            ),
            Divider(
              color: Colors.black.withOpacity(0.5),
              height: 10,
              thickness: 0.5,
              indent: 20,
              endIndent: 20,
            ),
            const Text(
              'Upload Gambar Wisata',
              style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
            ),
            GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: 200,
                  margin: const EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 50,
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              child: const Text(
                'Nama Wisata',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(),
              child: TextFormField(
                controller: nama,
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                  fillColor: Colors.white,
                  filled: true,

                  hintText: 'Nama Wisata',
                  // hintStyle: ,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              child: const Text(
                'Category',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(),
              child: TextFormField(
                controller: category,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                  fillColor: Colors.white,
                  filled: true,

                  hintText: 'Category',
                  // hintStyle: ,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              child: const Text(
                'Deskripsi',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(),
              child: TextFormField(
                controller: deskripsi,
                maxLines: 8,
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                  fillColor: Colors.white,
                  filled: true,

                  hintText: 'Deskripsi',
                  // hintStyle: ,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              child: const Text(
                'Lokasi',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(),
              child: TextFormField(
                controller: lokasi,
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                  fillColor: Colors.white,
                  filled: true,

                  hintText: 'Lokasi',
                  // hintStyle: ,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              child: const Text(
                'Waktu',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(),
              child: TextFormField(
                controller: waktu,
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                  fillColor: Colors.white,
                  filled: true,

                  hintText: 'Waktu',
                  // hintStyle: ,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                wisata.add({
                  'nama': nama.text,
                  'category': category.text,
                  'deskripsi': deskripsi.text,
                  'lokasi': lokasi.text,
                  'waktu': waktu.text,
                });
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Wisata()));
                nama.text = '';
                category.text = '';
                deskripsi.text = '';
                lokasi.text = '';
                waktu.text = '';
              },
              child: Container(
                  height: 60,
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  margin: const EdgeInsets.only(
                    bottom: 10,
                    top: 20,
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF1089FF),
                        Color(0xff19B9EB),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xff19B9EB),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 0.9),
                      ),
                    ],
                  ),
                  child: const Text(
                    "Tambah Wisata",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
