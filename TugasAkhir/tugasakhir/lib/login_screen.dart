import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tugasakhir/newdashboard.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String errorMessage = '';
  bool isLoading = false;

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  registerSubmit() async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: _emailController.text.toString().trim(),
          password: _passwordController.text);
    } on FirebaseAuthException catch (error) {
      errorMessage = error.message!;
    }
  }

  loginSubmit() async {
    setState(() {
      errorMessage = '';
    });
    try {
      _firebaseAuth
          .signInWithEmailAndPassword(
              email: _emailController.text, password: _passwordController.text)
          .then((value) => Get.to(BelajarNavBar()));
    } catch (e) {
      print(e);
      SnackBar(content: Text(e.toString()));
    }
  }

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      Get.to(BelajarNavBar());
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Padding(
            padding: EdgeInsets.all(10),
            child: Form(
              key: _key,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        margin: const EdgeInsets.only(top: 40),
                        child: Image.asset(
                          "assets/img/gabutmak.png",
                          width: 150,
                          height: 150,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.grey, //<-- SEE HERE
                          ),
                          controller: _emailController,
                          validator: validateEmail,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Password",
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.grey, //<-- SEE HERE
                          ),
                          controller: _passwordController,
                          validator: validatePassword,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(
                          child: Text(errorMessage,
                              style: TextStyle(color: Colors.red)),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              child: isLoading
                                  ? CircularProgressIndicator(
                                      color: Colors.white)
                                  : Text('Sign Up'),
                              onPressed: user != null
                                  ? null
                                  : () async {
                                      setState(() {
                                        isLoading = true;
                                        errorMessage = '';
                                      });
                                      if (_key.currentState!.validate()) {
                                        try {
                                          await FirebaseAuth.instance
                                              .createUserWithEmailAndPassword(
                                                email: _emailController.text,
                                                password:
                                                    _passwordController.text,
                                              )
                                              .then((value) =>
                                                  Get.to(BelajarNavBar()));
                                        } on FirebaseAuthException catch (error) {
                                          errorMessage = error.message!;
                                        }
                                        setState(() => isLoading = false);
                                      }
                                    }),
                          ElevatedButton(
                              child: isLoading
                                  ? CircularProgressIndicator(
                                      color: Colors.white)
                                  : Text('Sign In'),
                              onPressed: user != null
                                  ? null
                                  : () async {
                                      setState(() {
                                        isLoading = true;
                                        errorMessage = '';
                                      });
                                      if (_key.currentState!.validate()) {
                                        try {
                                          await FirebaseAuth.instance
                                              .signInWithEmailAndPassword(
                                                email: _emailController.text,
                                                password:
                                                    _passwordController.text,
                                              )
                                              .then((value) =>
                                                  Get.to(BelajarNavBar()));
                                        } on FirebaseAuthException catch (error) {
                                          errorMessage = error.message!;
                                        }
                                        setState(() => isLoading = false);
                                      }
                                    }),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.grey[300],
  primary: Colors.blue[300],
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
  ),
);

String? validateEmail(String? formEmail) {
  if (formEmail == null || formEmail.isEmpty)
    return 'E-mail address is required.';

  String pattern = r'\w+@\w+\.\w+';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(formEmail)) return 'Invalid E-mail Address format.';

  return null;
}

String? validatePassword(String? formPassword) {
  if (formPassword == null || formPassword.isEmpty)
    return 'Password is required.';

  String pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(formPassword))
    return '''
      Password must be at least 8 characters,
      include an uppercase letter, number and symbol.
      ''';

  return null;
}
