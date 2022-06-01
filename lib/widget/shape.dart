import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:inmalang/constant.dart';
import 'package:inmalang/screens/user/navigator.dart';

class Shape extends StatefulWidget {
  const Shape({
    Key? key,
  }) : super(key: key);

  @override
  State<Shape> createState() => _ShapeState();
}

class _ShapeState extends State<Shape> {
  late bool passwordVisibility;
  late bool _obs;
  final _formkey = GlobalKey<FormState>();
  bool showProgress = false;
  bool visible = false;
 
  final _auth = FirebaseAuth.instance;

  String emailController = "";
  String usernameController = "";
  String passwordController = "";
  String confirmpassController = "";

  @override
  void initState() {
    super.initState();
    // nameController = TextEditingController();
    // emailController = TextEditingController();
    // usernameController = TextEditingController();
    // passwordController = TextEditingController();
    // confirmpassController = TextEditingController();
    passwordVisibility = false; 
    _obs = false;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(
            size.width * 0.01, size.height * 0, size.width * 0.01, 0),
        child: ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: 330,
            height: 533,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 3,
                  color: kShadow2,
                  offset: Offset(0, 0),
                  spreadRadius: 2,
                )
              ],
              borderRadius: BorderRadius.circular(20),
              shape: BoxShape.rectangle,
            ),
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: Form(
                key: _formkey,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 25),
                      child: const Text(
                        'REGISTER',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            color: Colors.black87,
                            fontWeight: FontWeight.w900,
                            fontSize: 25,
                            decoration: TextDecoration.none),
                      ),
                    ),

                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        'Username',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Container(
                      height: 42,
                      margin:
                          const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 10),
                      child: TextFormField(
                        onChanged: (value) {
                          usernameController = value.toString().trim();
                        },
                        autofocus: false,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(17.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(17.0),
                            ),
                            border: InputBorder.none,
                            contentPadding:
                                const EdgeInsets.only(left: 13, right: 13),
                            fillColor: fillColor,
                            filled: true,
                            hintText: 'Username'),
                      ),
                    ),

                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        'Email',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Container(
                      height: 42,
                      margin:
                          const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 10),
                      child: TextFormField(
                        onChanged: (value) {
                          emailController = value.toString().trim();
                        },
                        autofocus: false,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 2.0),
                            borderRadius: BorderRadius.circular(17.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 2.0),
                            borderRadius: BorderRadius.circular(17.0),
                          ),
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.only(left: 13, right: 13),
                          fillColor: fillColor,
                          filled: true,
                          hintText: 'Email',
                        ),
                        validator: (value) {
                          if (value!.length == 0) {
                            return "Email cannot be empty";
                          }
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                              .hasMatch(value)) {
                            return ("Please enter a valid email");
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        'Password',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Container(
                      height: 42,
                      margin:
                          const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 10),
                      child: TextFormField(
                        onChanged: (value) {
                          passwordController = value.toString().trim();
                        },
                        autofocus: false,
                        obscureText: !passwordVisibility,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 2.0),
                            borderRadius: BorderRadius.circular(17.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 2.0),
                            borderRadius: BorderRadius.circular(17.0),
                          ),
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.only(left: 13, right: 13),
                          fillColor: fillColor,
                          filled: true,
                          hintText: 'Password',
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => passwordVisibility = !passwordVisibility,
                            ),
                            child: Icon(
                              passwordVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: kIconCol,
                              size: 22,
                            ),
                          ),
                        ),
                        validator: (value) {
                          RegExp regex = RegExp(r'^.{6,}$');
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          }
                          if (!regex.hasMatch(value)) {
                            return ("please enter valid password min. 6 character");
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        'Ulangi Password',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Container(
                      height: 42,
                      margin:
                          const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 10),
                      child: TextFormField(
                        onChanged: (value) {
                          confirmpassController = value.toString().trim();
                        },
                        autofocus: false,
                        obscureText: !_obs,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 2.0),
                            borderRadius: BorderRadius.circular(17.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 2.0),
                            borderRadius: BorderRadius.circular(17.0),
                          ),
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.only(left: 13, right: 13),
                          fillColor: fillColor,
                          filled: true,
                          hintText: 'Ulangi Password',
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => _obs = !_obs,
                            ),
                            child: Icon(
                              _obs
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: kIconCol,
                              size: 22,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (confirmpassController != passwordController) {
                            return "Password tidak sama";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.visiblePassword,
                      ),
                    ),
                    Container(
                        height: 45.0,
                        width: 450,
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        margin: const EdgeInsets.only(
                          top: 30,
                        ),
                        child: Material(
                          borderRadius: BorderRadius.circular(42.0),
                          color: kButton,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: kButton,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(42.0))),
                            onPressed: () async {
                              setState(() {
                                showProgress = true;
                              });
                              register();
                            },
                            child: const Center(
                              child: Text(
                                'Register ',
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Mulish'),
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void register() async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    try {
      final credentialUser = await _auth.createUserWithEmailAndPassword(
          email: emailController, password: passwordController);
      users.add({
        'id' : credentialUser.user!.uid,
        'username' : usernameController,
        'email' : emailController,
        'password' : passwordController,
      });
      

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.blueGrey,
          content: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Sucessfully Register'),
          ),
          duration: Duration(seconds: 5),
        ),
      );
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ScreenNav(user: credentialUser.user!)));
    } on FirebaseAuthException catch (e) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text(' Ops! Registration Failed'),
          content: Text('${e.message}'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(ctx).pop();
              },
              child: const Text('Okay'),
            )
          ],
        ),
      );
    }
  }
}
