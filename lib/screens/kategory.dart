import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:inmalang/screens/user/detail.dart';

class KategoryScreen extends StatefulWidget {
  const KategoryScreen({Key? key, required this.Kategory, required this.user}) : super(key: key);

  final String Kategory;
  final User user;

  @override
  State<KategoryScreen> createState() => _KategoryScreenState();
}

class _KategoryScreenState extends State<KategoryScreen> {
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
        title: Text(widget.Kategory),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
        child: Expanded(
          child: StreamBuilder(
              stream:
                  ref.where("kategori", isEqualTo: widget.Kategory).snapshots(),
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
                                  child: const Text('DETAIL'),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return DetailScreen(snapData: snap.data!.docs[index], user: widget.user);
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
          //
          // Column(
          //   children: [
          //     Card(
          //       child: Column(
          //         mainAxisSize: MainAxisSize.min,
          //         children: <Widget>[
          //           const ListTile(
          //             leading: Icon(Icons.location_on),
          //             title: Text('The Enchanted Nightingale'),
          //             subtitle:
          //                 Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          //           ),
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.end,
          //             children: <Widget>[
          //               const SizedBox(width: 8),
          //               TextButton(
          //                 child: const Text('DETAIL'),
          //                 onPressed: () {/* ... */},
          //               ),
          //               const SizedBox(width: 8),
          //             ],
          //           ),
          //         ],
          //       ),
          //     ),

          //     Card(
          //       child: Column(
          //         mainAxisSize: MainAxisSize.min,
          //         children: <Widget>[
          //           const ListTile(
          //             leading: Icon(Icons.album),
          //             title: Text('The Enchanted Nightingale'),
          //             subtitle:
          //                 Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          //           ),
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.end,
          //             children: <Widget>[
          //               TextButton(
          //                 child: const Text('BUY TICKETS'),
          //                 onPressed: () {/* ... */},
          //               ),
          //               const SizedBox(width: 8),
          //               TextButton(
          //                 child: const Text('LISTEN'),
          //                 onPressed: () {/* ... */},
          //               ),
          //               const SizedBox(width: 8),
          //             ],
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
