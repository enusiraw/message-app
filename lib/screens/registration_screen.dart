// ignore_for_file: prefer_const_constructors

import 'package:chatapp/constants.dart';
import 'package:chatapp/screens/chat_screen.dart';
import 'package:chatapp/screens/conponents/roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_alt/modal_progress_hud_alt.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = "register";
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
   bool showSpinner = false;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: 'logo',
                  child: Container(
                    height: 200.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value;
                },
                decoration:
                    KTextFieldDecoration.copyWith(hintText: "Enter Your Email"),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: KTextFieldDecoration.copyWith(
                      hintText: 'Enter Your Password')),
              SizedBox(
                height: 24.0,
              ),
              RoundedButton(
                  color: Colors.blueGrey,
                  onPressed: () async {
                    setState(() {
                      showSpinner = true;
                    });
                    // Navigator.pushNamed(context, RegistrationScreen.id);
                    print(email);
                    print(password);

                    try {
                      final newuser =
                          await _auth.createUserWithEmailAndPassword(
                              email: email, password: password);
                      if (newuser != null) {
                        Navigator.pushNamed(context, ChatScreen.id);
                      }
                      setState(() {
                        showSpinner = false;
                      });
                    } catch (e) {
                      print(e);
                    }
                  },
                  title: 'Register')
            ],
          ),
        ),
      ),
    );
  }
}
