import 'package:ads_platform/screens/home_screen.dart';
import 'package:ads_platform/screens/new_ad_screen.dart';
import 'package:ads_platform/screens/sign_in_screen.dart';
import 'package:ads_platform/screens/sign_up_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

final user = FirebaseAuth.instance.currentUser;
GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
GoogleSignInAccount? googleUser = _googleSignIn.currentUser;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AdsApp());

}

class AdsApp extends StatelessWidget {


  Widget build(BuildContext context) {
    Widget _defaultHome = SignIn();
    if(user != null || googleUser != null){
      _defaultHome = HomePage();
    }
    return MaterialApp(
      home: _defaultHome,
      routes: {
        SignIn.id : (context) => SignIn(),
        SignUp.id : (context) => SignUp(),
        HomePage.id : (context) => HomePage(),
        NewAd.id : (context) => NewAd()
      },
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.purple,
      ),
    );
  }
}
