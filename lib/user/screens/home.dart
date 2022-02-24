import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
      backgroundColor: Color(0xFFF6FEEF),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/image/logo.png",
                      width: size.width * 0.25,
                    ),
                    Image.network(
                      'https://picsum.photos/seed/637/600',
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Wawan!',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                          child: Text(
                            'Kamu ingin mencari tempat wisata seperti apa?',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 15, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      controller: textController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'Cari',
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF7C7C7C),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Icon(
                                      Icons.search,
                                      color: Color(0xFF7C7C7C),
                                      size: 20,
                                    ),
                                    onTap: () {},
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: size.height * 0.27,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                color: Color(0xFFC6C1C1),
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
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: size.width * 0.04),
                                          child: Container(
                                            width: size.width * 0.15,
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: size.width * 0.15,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Theme.of(
                                                                  context)
                                                              .primaryColor),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            2.0),
                                                    child: Image.asset(
                                                        "assets/image/ferris-wheel.png"),
                                                  ),
                                                ),
                                                Text(
                                                  "Hiburan",
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: size.width * 0.04),
                                          child: Container(
                                            width: size.width * 0.15,
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: size.width * 0.15,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Theme.of(
                                                                  context)
                                                              .primaryColor),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            2.0),
                                                    child: Image.asset(
                                                        "assets/image/mortarboard.png"),
                                                  ),
                                                ),
                                                Text(
                                                  "Edukasi",
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: size.width * 0.04),
                                          child: Container(
                                            width: size.width * 0.15,
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: size.width * 0.15,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Theme.of(
                                                                  context)
                                                              .primaryColor),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            2.0),
                                                    child: Image.asset(
                                                        "assets/image/plant.png"),
                                                  ),
                                                ),
                                                Text(
                                                  "Agrowisata",
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
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
                                              Text(
                                                "Religi",
                                                style: TextStyle(fontSize: 12),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: size.width * 0.04),
                                        child: Container(
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
                                              Text(
                                                "Pantai",
                                                style: TextStyle(fontSize: 12),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: size.width * 0.04),
                                        child: Container(
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
                                              Text(
                                                "Gunung",
                                                style: TextStyle(fontSize: 12),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: size.width * 0.04),
                                        child: Container(
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
                                              Text(
                                                "Sejarah",
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
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
                                                    "assets/image/fast-food.png"),
                                              ),
                                            ),
                                            Text(
                                              "Kuliner",
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                          child: Text(
                            'Rencana liburan anda!',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          height: size.height * 0.3,
                          child: CarouselSlider(
                            options: CarouselOptions(
                              enlargeCenterPage: true,
                              enableInfiniteScroll: false,
                              autoPlay: false,
                            ),
                            items: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(
                                          0, 0), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        height: size.height * 0.2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                                          color: Colors.black,
                                          image: DecorationImage(
                                            image: AssetImage("assets/image/pantai-teluk.jpg"),
                                            fit: BoxFit.cover 
                                          )
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Pantai Teluk Asmara",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(
                                          0, 0), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        height: size.height * 0.2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                                          color: Colors.black,
                                          image: DecorationImage(
                                            image: AssetImage("assets/image/pantai-teluk.jpg"),
                                            fit: BoxFit.cover 
                                          )
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Pantai Teluk Asmara",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(
                                          0, 0), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        height: size.height * 0.2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                                          color: Colors.black,
                                          image: DecorationImage(
                                            image: AssetImage("assets/image/pantai-teluk.jpg"),
                                            fit: BoxFit.cover 
                                          )
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Pantai Teluk Asmara",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
