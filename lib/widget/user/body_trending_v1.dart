import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BodyTrendingV1 extends StatefulWidget {
  const BodyTrendingV1({Key? key}) : super(key: key);

  @override
  State<BodyTrendingV1> createState() => _BodyTrendingV1State();
}

class _BodyTrendingV1State extends State<BodyTrendingV1> {
  final ref = FirebaseFirestore.instance.collection('wisata');

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StreamBuilder(
          stream: ref.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snap) {
            if (snap.hasError) {
              return Text(snap.error.toString());
            }
            if (snap.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }
            return ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: snap.hasData ? snap.data!.docs.length : 0,
                itemBuilder: (_, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    height: 350.0,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 24.0,
                    ),
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 350.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.network(
                              snap.data!.docs[index].get('image'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                });
          }),
    );
  }
}

//  Padding(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
//                     child: Container(
//                       width: 329,
//                       margin: const EdgeInsets.only(top: 10),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.6),
//                             spreadRadius: 0,
//                             blurRadius: 5,
//                             offset: const Offset(0, 4),
//                           ),
//                         ],
//                         borderRadius: const BorderRadius.only(
//                           topLeft: Radius.circular(15),
//                           topRight: Radius.circular(15),
//                           bottomLeft: Radius.circular(15),
//                           bottomRight: Radius.circular(15),
//                         ),
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Image.network(
//                             snap.data!.docs[index].get('image'),
//                             // width: double.infinity,
//                             // height: 100,
//                           ),
//                           Center(
//                             child: Text(
//                               snap.data!.docs[index].get('nama'),
//                               style: const TextStyle(
//                                   fontSize: 10,
//                                   fontWeight: FontWeight.bold,
//                                   fontFamily: "Mulish"),
//                             ),
//                           ),
//                           Center(
//                             child: Text(
//                               snap.data!.docs[index].get('desc'),
//                               style: const TextStyle(
//                                   fontSize: 5,
//                                   fontWeight: FontWeight.w500,
//                                   fontFamily: "Mulish"),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   );

// Padding(
//             padding: EdgeInsets.fromLTRB(20, 0, 20, 15),
//             child: Container(
//               width: 329,
//               height: 130,
//               margin: const EdgeInsets.only(top: 10),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.6),
//                     spreadRadius: 0,
//                     blurRadius: 5,
//                     offset: const Offset(0, 4),
//                   ),
//                 ],
//                 borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(15),
//                     topRight: Radius.circular(15),
//                     bottomLeft: Radius.circular(15),
//                     bottomRight: Radius.circular(15)),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Image.asset('assets/image/flora-wisata-san-terra1 1.png'),
//                   const Center(
//                     child: Text(
//                       'Flora wisata San Terra',
//                       style: TextStyle(
//                           fontSize: 10,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: "Mulish"),
//                     ),
//                   ),
//                   const Center(
//                     child: Text(
//                       'Wisata petik apel Batu Malang pertama yang bisa kamu kunjungi adalah Agro Wisata Petik Apel Kelompok Tani Makmur Abadi. Di sini \nkamu akan menikmati sensasi memetik apel yang masih segar langsung dari pohonnya. Ya, kamu bisa memetik buah apel sebanyak \nmungkin, tanpa dibatasi. Selengkapnya...',
//                       style: TextStyle(
//                           fontSize: 5,
//                           fontWeight: FontWeight.w500,
//                           fontFamily: "Mulish"),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),