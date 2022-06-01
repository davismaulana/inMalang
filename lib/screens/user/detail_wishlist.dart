import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DetailWishlist extends StatefulWidget {
  
  DetailWishlist({ Key? key,  required this.snapData }) : super(key: key);
  DocumentSnapshot snapData;

  @override
  State<DetailWishlist> createState() => _DetailWishlistState();
}

class _DetailWishlistState extends State<DetailWishlist> {
  final ref = FirebaseFirestore.instance.collection('wisata');

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
    );
  }
}