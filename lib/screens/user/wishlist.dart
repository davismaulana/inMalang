import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:inmalang/screens/user/detail_wishlist.dart';
import 'package:inmalang/widget/user/header.dart';
import 'package:inmalang/widget/user/searchbar.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({ Key? key, required this.user }) : super(key: key);
  final User user;

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  final ref = FirebaseFirestore.instance.collection('wishlist');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wishlist"),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
        child: Expanded(
          child: StreamBuilder(
              stream:
                  ref.where("id_user", isEqualTo: widget.user.uid).snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snap) {
                if (snap.hasError) {
                  return Text(snap.error.toString());
                }
                if (snap.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }

                return ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: snap.hasData ? snap.data!.docs.length : 0,
                    itemBuilder: (_, index) {
                      return Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.location_on),
                              title: Text(snap.data!.docs[index].get('nama')),
                              subtitle: Text(
                                snap.data!.docs[index].get('lokasi'),
                                maxLines: 2,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                const SizedBox(width: 8),
                                TextButton(
                                  child: const Text('DELETE', style: TextStyle(color: Colors.red),),
                                  onPressed: () {
                                    snap.data!.docs[index].reference.delete();
                                  },
                                ),
                                TextButton(
                                  child: const Text('DETAIL'),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return DetailWishlist(snapData: snap.data!.docs[index]); 
                                        
                                        },
                                      ),
                                    );
                                  },
                                ),
                                
                                const SizedBox(width: 8),
                              ],
                            ),
                          ],
                        ),
                      );
                    });
              }),
        ),
      ),
    );
  }
}
