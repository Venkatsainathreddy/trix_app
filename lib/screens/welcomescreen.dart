import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trix_app/Services/authservice.dart';
import 'package:trix_app/screens/loginscreen.dart';
import 'package:trix_app/screens/signupscreen.dart';
//ignore: unused_import
//import 'package:percent_indicator/percent_indicator.dart';
//import 'package:studyapp/screens/loginscreen.dart';

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    Timer(Duration(milliseconds: 2500), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (ctx) => Signupscreen()));
    });
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.blue[400]],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter),
              image: DecorationImage(
                  image: AssetImage('images/1.png'), fit: BoxFit.cover)),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 120),
                Text(
                  'Study App',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Camar', fontSize: 30),
                ),
                SizedBox(height: 20),
                Container(
                  height: 200,
                  child: Image(
                    image: AssetImage('images/2.png'),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Exam Preparation in One Place',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                SizedBox(height: 150),

                /*LinearPercentIndicator(animation: true,
                       alignment: MainAxisAlignment.center,
                        width: 240.0,
                        lineHeight: 4.0,
                        percent: 1.0,
                        animationDuration: 2250,
                        backgroundColor: Colors.grey,
                        progressColor: Colors.white,
                        ),*/
              ],
            ),
          )),
    );
  }
}
