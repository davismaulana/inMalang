import 'package:flutter/material.dart';

class BodyTrending extends StatelessWidget {
  const BodyTrending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
      width: double.infinity,
      height: 699,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      ),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Mari kita lihat apa yang\ntrending hari ini! 🔥',
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              Container(
                width: 329,
                height: 130,
                margin: const EdgeInsets.only(top: 10),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/image/maa 1.png'),
                    const Center(
                      child: Text(
                        'Museum Angkut',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Mulish"),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Museum Angkut Plus Movie Star Studio merupakan museum transportasi modern pertama di Indonesia. \nMemadukan unsur seni dan budaya yang mengusung konsep edukasi dan hiburan. Selengkapnya...',
                        style: TextStyle(
                            fontSize: 5,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Mulish"),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 329,
                height: 130,
                margin: const EdgeInsets.only(top: 10),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/image/wisata petik apel 1.png'),
                    const Center(
                      child: Text(
                        'WISATA PETIK APEL',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Mulish"),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Wisata petik apel Batu Malang pertama yang bisa kamu kunjungi adalah Agro Wisata Petik Apel Kelompok Tani Makmur Abadi. Di sini \nkamu akan menikmati sensasi memetik apel yang masih segar langsung dari pohonnya. Ya, kamu bisa memetik buah apel sebanyak \nmungkin, tanpa dibatasi. Selengkapnya...',
                        style: TextStyle(
                            fontSize: 5,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Mulish"),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 329,
                height: 130,
                margin: const EdgeInsets.only(top: 10),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/image/Pantai-Balekambang 1.png'),
                    const Center(
                      child: Text(
                        'PANTAI BALEKAMBANG',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Mulish"),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Pantai Balekambang merupakan salah satu pantai cantik yang wajib dikunjungi di Malang, Jawa Timur. Pesonanya gak kalah menarik dengan pantai-pantai di Bali.Pantai ini pun kerap disebut Tanah Lot ala Malang. Selain itu, Pantai Balekambang memiliki akses jalan yang mudah dijangkau. Selengkapya...',
                        style: TextStyle(
                            fontSize: 5,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Mulish"),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 329,
                height: 130,
                margin: const EdgeInsets.only(top: 10),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/image/flora-wisata-san-terra1 1.png'),
                    const Center(
                      child: Text(
                        'Flora wisata San Terra',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Mulish"),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Wisata petik apel Batu Malang pertama yang bisa kamu kunjungi adalah Agro Wisata Petik Apel Kelompok Tani Makmur Abadi. Di sini \nkamu akan menikmati sensasi memetik apel yang masih segar langsung dari pohonnya. Ya, kamu bisa memetik buah apel sebanyak \nmungkin, tanpa dibatasi. Selengkapnya...',
                        style: TextStyle(
                            fontSize: 5,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Mulish"),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
