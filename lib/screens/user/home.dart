import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:inmalang/constant.dart';
import 'package:inmalang/screens/kategory.dart';

class HomeWidget extends StatefulWidget {
  final String username;

  const HomeWidget({required this.username});

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final ref = FirebaseFirestore.instance.collection('wisata');

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: kBack,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 3, 20, 3),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/image/logo.png",
                      width: size.width * 0.19,
                    ),
                    // Image.network(
                    //   'https://picsum.photos/seed/637/600',
                    //   width: 60,
                    //   height: 60,
                    //   fit: BoxFit.cover,
                    // ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20, 15, 10, 10),
                      child: Text(
                        'Hi,' + widget.username,
                        style: const TextStyle(
                            fontFamily: 'Mulish',
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 15, 10, 10),
                      child: Text(
                        'Kamu ingin mencari tempat wisata seperti apa?',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Container(
                        height: size.height * 0.27,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 3,
                              color: kShadow,
                              spreadRadius: 1,
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                size.width * 0.055,
                                size.height * 0.02,
                                size.width * 0.055,
                                size.height * 0.02),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: size.height * 0.02),
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              right: size.width * 0.04),
                                          child: SizedBox(
                                            width: size.width * 0.15,
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: size.width * 0.15,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Theme.of(context)
                                                              .primaryColor),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(2.0),
                                                    child: Image.asset(
                                                        "assets/image/ferris-wheel.png"),
                                                  ),
                                                ),
                                                const Text(
                                                  "Hiburan",
                                                  style: TextStyle(fontSize: 12),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        onTap: (){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return KategoryScreen(Kategory: "Hiburan",);
                                              },
                                            ),
                                          );
                                        },
                                      ),

                                      GestureDetector(
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              right: size.width * 0.04),
                                          child: SizedBox(
                                            width: size.width * 0.15,
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: size.width * 0.15,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Theme.of(context)
                                                              .primaryColor),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(2.0),
                                                    child: Image.asset(
                                                        "assets/image/mortarboard.png"),
                                                  ),
                                                ),
                                                const Text(
                                                  "Edukasi",
                                                  style: TextStyle(fontSize: 12),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        onTap: (){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return KategoryScreen(Kategory: "Edukasi",);
                                              },
                                            ),
                                          );
                                        },
                                      ),

                                      GestureDetector(
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              right: size.width * 0.04),
                                          child: SizedBox(
                                            width: size.width * 0.15,
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: size.width * 0.15,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Theme.of(context)
                                                              .primaryColor),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(2.0),
                                                    child: Image.asset(
                                                        "assets/image/plant.png"),
                                                  ),
                                                ),
                                                const Text(
                                                  "Agrowisata",
                                                  style: TextStyle(fontSize: 10),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        onTap: (){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return KategoryScreen(Kategory: "Agrowisata",);
                                              },
                                            ),
                                          );
                                        },
                                      ),

                                      GestureDetector(
                                        child: SizedBox(
                                          width: size.width * 0.15,
                                          child: Column(
                                            children: [
                                              Container(
                                                width: size.width * 0.15,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Theme.of(context)
                                                            .primaryColor),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Image.asset(
                                                      "assets/image/pray.png"),
                                                ),
                                              ),
                                              const Text(
                                                "Religi",
                                                style: TextStyle(fontSize: 12),
                                              )
                                            ],
                                          ),
                                        ),
                                        onTap: (){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return KategoryScreen(Kategory: "Religi",);
                                              },
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            right: size.width * 0.04),
                                        child: SizedBox(
                                          width: size.width * 0.15,
                                          child: Column(
                                            children: [
                                              Container(
                                                width: size.width * 0.15,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Theme.of(context)
                                                            .primaryColor),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Image.asset(
                                                      "assets/image/parasol.png"),
                                                ),
                                              ),
                                              const Text(
                                                "Pantai",
                                                style: TextStyle(fontSize: 12),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return KategoryScreen(Kategory: "Pantai",);
                                              },
                                            ),
                                          );
                                      },
                                    ),

                                    GestureDetector(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            right: size.width * 0.04),
                                        child: SizedBox(
                                          width: size.width * 0.15,
                                          child: Column(
                                            children: [
                                              Container(
                                                width: size.width * 0.15,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Theme.of(context)
                                                            .primaryColor),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Image.asset(
                                                      "assets/image/mountain.png"),
                                                ),
                                              ),
                                              const Text(
                                                "Gunung",
                                                style: TextStyle(fontSize: 12),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return KategoryScreen(Kategory: "Gunung",);
                                              },
                                            ),
                                          );
                                      },
                                    ),

                                    GestureDetector(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            right: size.width * 0.04),
                                        child: SizedBox(
                                          width: size.width * 0.15,
                                          child: Column(
                                            children: [
                                              Container(
                                                width: size.width * 0.15,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Theme.of(context)
                                                            .primaryColor),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Image.asset(
                                                      "assets/image/wat-phra-kaew.png"),
                                                ),
                                              ),
                                              const Text(
                                                "Sejarah",
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return KategoryScreen(Kategory: "Sejarah",);
                                              },
                                            ),
                                          );
                                      },
                                    ),

                                    GestureDetector(
                                      child: SizedBox(
                                        width: size.width * 0.15,
                                        child: Column(
                                          children: [
                                            Container(
                                              width: size.width * 0.15,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Theme.of(context)
                                                          .primaryColor),
                                                  borderRadius:
                                                      BorderRadius.circular(50)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Image.asset(
                                                    "assets/image/fast-food.png"),
                                              ),
                                            ),
                                            const Text(
                                              "Kuliner",
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return KategoryScreen(Kategory: "Kuliner",);
                                              },
                                            ),
                                          );
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 10),
                      child: Text(
                        'Rencana liburan anda!',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    StreamBuilder(
                        stream: ref.snapshots(),
                        builder: (context, AsyncSnapshot<QuerySnapshot> snap) {
                          if (snap.hasError) {
                            return Text(snap.error.toString());
                          }
                          if (snap.connectionState == ConnectionState.waiting) {
                            return Center(child: CircularProgressIndicator());
                          }

                          return CarouselSlider.builder(
                            itemCount:
                                snap.hasData ? snap.data!.docs.length : 0,
                            itemBuilder: (_, index, int) {
                              return Container(
                                margin: const EdgeInsets.all(5),
                                width: size.width * 1,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: NetworkImage(snap
                                            .data!.docs[index]
                                            .get('image')),
                                        fit: BoxFit.cover)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        snap.data!.docs[index].get('nama'),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          shadows: [
                                            Shadow(
                                              offset: Offset(0, 0),
                                              blurRadius: 5,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            options: CarouselOptions(
                              height: 180,
                              aspectRatio: 16 / 9,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              enlargeCenterPage: true,
                              enableInfiniteScroll: false,
                              autoPlay: true,
                              viewportFraction: 0.8,
                            ),
                          );
                        }),

                    // Destinasi popoler
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 10),
                      child: Text(
                        'Destinasi Populer',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    StreamBuilder(
                        stream: ref.snapshots(),
                        builder: (context, AsyncSnapshot<QuerySnapshot> snap) {
                          if (snap.hasError) {
                            return Text(snap.error.toString());
                          }
                          if (snap.connectionState == ConnectionState.waiting) {
                            return Center(child: CircularProgressIndicator());
                          }

                          return CarouselSlider.builder(
                            itemCount:
                                snap.hasData ? snap.data!.docs.length : 0,
                            itemBuilder: (_, index, int) {
                              return Container(
                                margin: const EdgeInsets.all(5),
                                width: size.width * 1,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: NetworkImage(snap
                                            .data!.docs[index]
                                            .get('image')),
                                        fit: BoxFit.cover)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        snap.data!.docs[index].get('nama'),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          shadows: [
                                            Shadow(
                                              offset: Offset(0, 0),
                                              blurRadius: 5,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            options: CarouselOptions(
                              height: 180,
                              aspectRatio: 16 / 9,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              enlargeCenterPage: true,
                              enableInfiniteScroll: false,
                              autoPlay: true,
                              viewportFraction: 0.8,
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
