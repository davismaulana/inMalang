import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:inmalang/constant.dart';
import 'package:inmalang/screens/register.dart';
import 'package:inmalang/screens/user/navigator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool visible = false;
  late bool passwordVisibility;
  final _formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String? emailController = "";
  String? passwordController = "";

  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    passwordVisibility = false;
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
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            child: SingleChildScrollView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    child: SizedBox(
                      width: size.width * 0.6,
                      child: Image.asset("assets/image/logo.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        size.width * 0.1, size.height * 0, size.width * 0.1, 0),
                    child: Container(
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
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0, size.width * 0.1, 0, 0),
                            child: Text('LOGIN',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: kTextLog,
                                  fontSize: size.width * 0.07,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                size.width * 0.08,
                                size.height * 0.05,
                                size.width * 0.08,
                                size.height * 0.05),
                            child: Form(
                              key: _formKey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 23),
                                        child: const Icon(
                                          Icons.perm_identity,
                                          color: Colors.black,
                                          size: 29,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  size.width * 0.03, 0, 0, 0),
                                          child: Column(
                                            children: [
                                              Container(
                                                alignment: Alignment.topLeft,
                                                padding: const EdgeInsets.only(
                                                    left: 5,
                                                    right: 30,
                                                    bottom: 3),
                                                child: const Text(
                                                  'Email',
                                                  style: TextStyle(
                                                    fontFamily: 'Mulish',
                                                    color: Colors.black87,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15,
                                                    decoration:
                                                        TextDecoration.none,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 42,
                                                child: TextFormField(
                                                  onChanged: (value) {
                                                    emailController =
                                                        value.toString().trim();
                                                  },
                                                  autofocus: false,
                                                  decoration: InputDecoration(
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 2.0),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              17.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 2.0),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              17.0),
                                                    ),
                                                    border: InputBorder.none,
                                                    contentPadding:
                                                        const EdgeInsets.only(
                                                            left: 13,
                                                            right: 13),
                                                    fillColor: fillColor,
                                                    filled: true,
                                                    hintText: 'Email',
                                                  ),
                                                  validator: (value) {
                                                    if (value!.length == 0) {
                                                      return "Email cannot be empty";
                                                    }
                                                    if (!RegExp(
                                                            "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                                        .hasMatch(value)) {
                                                      return ("Please enter a valid email");
                                                    } else {
                                                      return null;
                                                    }
                                                  },
                                                  onSaved: (value) {
                                                    emailController = value!;
                                                  },
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, size.height * 0.015, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 20),
                                          child: const Icon(
                                            Icons.lock_outlined,
                                            color: Colors.black,
                                            size: 29,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    size.width * 0.03, 0, 0, 0),
                                            child: Column(
                                              children: [
                                                Container(
                                                  alignment: Alignment.topLeft,
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 30,
                                                          bottom: 3),
                                                  child: const Text(
                                                    'Password',
                                                    style: TextStyle(
                                                      fontFamily: 'Mulish',
                                                      color: Colors.black87,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15,
                                                      decoration:
                                                          TextDecoration.none,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 42,
                                                  child: TextFormField(
                                                    onChanged: (value) {
                                                      passwordController =
                                                          value;
                                                    },
                                                    autofocus: false,
                                                    obscureText:
                                                        !passwordVisibility,
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 2.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(17.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 2.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(17.0),
                                                      ),
                                                      border: InputBorder.none,
                                                      contentPadding:
                                                          const EdgeInsets.only(
                                                              left: 13,
                                                              right: 13),
                                                      fillColor: fillColor,
                                                      filled: true,
                                                      hintText: 'Password ',
                                                      suffixIcon: InkWell(
                                                        onTap: () => setState(
                                                          () => passwordVisibility =
                                                              !passwordVisibility,
                                                        ),
                                                        child: Icon(
                                                          passwordVisibility
                                                              ? Icons
                                                                  .visibility_outlined
                                                              : Icons
                                                                  .visibility_off_outlined,
                                                          color: kIconCol,
                                                          size: 22,
                                                        ),
                                                      ),
                                                    ),
                                                    keyboardType: TextInputType
                                                        .visiblePassword,
                                                    onSaved: (value) {
                                                      // passwordController.text =
                                                      //     value!;
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, size.width * 0.09, 0, 0),
                                    child: MaterialButton(
                                      height: size.height * 0.06,
                                      minWidth: size.width * 0.6,
                                      color: kButton,
                                      textColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Text(
                                        "Login",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Mullish'),
                                      ),
                                      onPressed: () async {
                                        setState(() {
                                          visible = true;
                                        });
                                        try {
                                          final userCredential = await _auth
                                              .signInWithEmailAndPassword(
                                                  email: emailController
                                                      .toString(),
                                                  password: passwordController
                                                      .toString());
                                          await Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (contex) => ScreenNav(
                                                user: userCredential.user!,
                                              ),
                                            ),
                                          );
                                        } on FirebaseAuthException catch (e) {
                                          showDialog(
                                            context: context,
                                            builder: (ctx) => AlertDialog(
                                              title: const Text(
                                                  "Ops! Login Failed"),
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
                                          print(e);
                                        }
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, size.height * 0.01, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          'Tidak punya akun?',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(3, 0, 0, 0),
                                          child: GestureDetector(
                                            child: const Text('Buat akun',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: kText,
                                                )),
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) {
                                                    return const RegisterPage();
                                                  },
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
