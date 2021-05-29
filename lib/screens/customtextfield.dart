import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hint;
  String label;
  bool secured;
  TextInputType keyboardType = TextInputType.text;
  CustomTextField({this.hint, this.label, this.secured, this.keyboardType});

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25),
      //keyboardType: keyboardType,
      child: TextFormField(
        obscureText: secured,
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.transparent)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.transparent)),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            hintText: hint,
            labelText: label,
            hintStyle: TextStyle(
                fontSize: 16,
                letterSpacing: 1.5,
                color: Colors.white70,
                fontWeight: FontWeight.w700),
            labelStyle: TextStyle(
                fontSize: 16,
                letterSpacing: 1.5,
                color: Colors.white70,
                fontWeight: FontWeight.w700),
            filled: true,
            fillColor: Colors.white.withOpacity(.3),
            focusColor: Colors.transparent),
      ),
    );
  }
}
