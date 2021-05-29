import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:trix_app/screens/loginscreen.dart';
// ignore: unused_import
import 'package:trix_app/screens/signupscreen.dart';
import 'package:trix_app/screens/welcomescreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp()
      //MaterialApp(
      //initialRoute: "/",
      //routes: {
      // "/":        (context) => MyHomePage(),
      // "/login":   (context) => LoginScreen(),
      // "/signup":  (context) => Signupscreen(),
      //},)
      );
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
