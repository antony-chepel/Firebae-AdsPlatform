import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MyAds extends StatefulWidget {
  static const id = "my_ads";

  @override
  _MyAdsState createState() => _MyAdsState();
}

class _MyAdsState extends State<MyAds> {
 // final user = FirebaseAuth.instance.currentUser;
  //final _auth = FirebaseAuth.instance;
 // final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Ads'),
        centerTitle: true,
      ),
    );

  }
}
