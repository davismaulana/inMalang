import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:inmalang/screens/user/wishlist.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({Key? key, required this.snapData, required this.user})
      : super(key: key);
  DocumentSnapshot snapData;
  final User user;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final ref = FirebaseFirestore.instance.collection('wisata');
  CollectionReference wishlist =
      FirebaseFirestore.instance.collection('wishlist');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Detail"),
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(widget.snapData.get("image")),
                    fit: BoxFit.cover)),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 5),
            child: Text(
              widget.snapData.get("nama"),
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                border:
                    Border(top: BorderSide(width: 1.0, color: Colors.black12))),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 5),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.location_on,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Expanded(
                  child: Text(
                    widget.snapData.get("lokasi"),
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 5),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.timelapse,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Expanded(
                  child: Text(
                    widget.snapData.get("waktu"),
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                border:
                    Border(top: BorderSide(width: 1.0, color: Colors.black12))),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Deskripsi :",
                      style: TextStyle(
                          fontSize: 15, color: Theme.of(context).primaryColor),
                    ),
                    Text(widget.snapData.get("desc"))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        onPressed: () => {
          wishlist.add({
            'nama': widget.snapData.get("nama"),
            'lokasi': widget.snapData.get("lokasi"),
            'waktu': widget.snapData.get("waktu"),
            'desc': widget.snapData.get("desc"),
            'image': widget.snapData.get("image"),
            'id_user': widget.user.uid,
          }).whenComplete(() => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.green,
                  content: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Sucessfully Add to Wishlist'),
                  ),
                  duration: Duration(seconds: 5),
                ),
              ))
        },
      ),
    );
  }
}
