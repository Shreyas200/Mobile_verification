import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobile_verification/pages/login.dart';

class Home_page extends StatefulWidget {
  @override
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
            '''Hello, I am Shreyas Tiwari
               Welcome to Home Page'''
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          await _auth.signOut();
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
        },
        child: Icon(Icons.logout),
      ),
    );
  }
}
