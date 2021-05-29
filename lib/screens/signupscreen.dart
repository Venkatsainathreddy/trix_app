import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:trix_app/models/userdata.dart';
import 'package:trix_app/screens/dropdowns.dart';
import 'package:trix_app/screens/loginscreen.dart';
import 'package:trix_app/screens/customtextfield.dart';

class Signupscreen extends StatefulWidget {
  @override
  _SignupscreenState createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  String _email, _password, _name, _mobile, _collegename;
  var _formkey = GlobalKey<FormState>();
  bool autoValidate = false;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    var form = Form(
      key: _formkey,
      autovalidate: autoValidate,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Row(
            children: <Widget>[
              SizedBox(width: 40),
              Text(
                'Create account',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: TextFormField(
                keyboardType: TextInputType.text,
                validator: (item) {
                  return item.length > 0 ? null : "Enter valid Name";
                },
                onChanged: (item) {
                  setState(() {
                    _name = item;
                  });
                },
                decoration: InputDecoration(
                    hintText: "Enter Name",
                    labelText: "Name",
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
                    filled: true,
                    labelStyle: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1.5,
                        color: Colors.white70,
                        fontWeight: FontWeight.w700),
                    hintStyle: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1.5,
                        color: Colors.white70,
                        fontWeight: FontWeight.w700),
                    fillColor: Colors.white.withOpacity(.3),
                    focusColor: Colors.transparent)),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: TextFormField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.emailAddress,
                validator: (item) {
                  return item.contains("@") ? null : "Enter valid Email";
                },
                onChanged: (item) {
                  setState(() {
                    _email = item;
                  });
                },
                decoration: InputDecoration(
                    hintText: "Enter Email",
                    labelText: "Email",
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
                    filled: true,
                    labelStyle: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1.5,
                        color: Colors.white70,
                        fontWeight: FontWeight.w700),
                    hintStyle: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1.5,
                        color: Colors.white70,
                        fontWeight: FontWeight.w700),
                    fillColor: Colors.white.withOpacity(.3),
                    focusColor: Colors.transparent)),
          ),
          SizedBox(height: 25),
          Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.phone,
                  maxLength: 10,
                  validator: (item) {
                    return item.length < 10 ? "Enter valid Mobile" : null;
                  },
                  onChanged: (item) {
                    setState(() {
                      _mobile = item;
                    });
                  },
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                      hintText: "Enter Mobile Number",
                      labelText: "Mobile Number",
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
                      filled: true,
                      labelStyle: TextStyle(
                          fontSize: 16,
                          letterSpacing: 1.5,
                          color: Colors.white70,
                          fontWeight: FontWeight.w700),
                      hintStyle: TextStyle(
                          fontSize: 16,
                          letterSpacing: 1.5,
                          color: Colors.white70,
                          fontWeight: FontWeight.w700),
                      fillColor: Colors.white.withOpacity(.3),
                      focusColor: Colors.transparent))),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: TextFormField(
                keyboardType: TextInputType.text,
                validator: (item) {
                  return item.length > 0 ? null : "Enter College Name";
                },
                onChanged: (item) {
                  setState(() {
                    _name = item;
                  });
                },
                decoration: InputDecoration(
                    hintText: "Enter College Name",
                    labelText: "College name",
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
                    filled: true,
                    labelStyle: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1.5,
                        color: Colors.white70,
                        fontWeight: FontWeight.w700),
                    hintStyle: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1.5,
                        color: Colors.white70,
                        fontWeight: FontWeight.w700),
                    fillColor: Colors.white.withOpacity(.3),
                    focusColor: Colors.transparent)),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: TextFormField(
              obscureText: true,
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.text,
              validator: (item) {
                return item.length > 6 ? null : "Password must be 6 characters";
              },
              onChanged: (item) {
                setState(() {
                  _password = item;
                });
              },
              decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
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
                  filled: true,
                  labelStyle: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1.5,
                      color: Colors.white70,
                      fontWeight: FontWeight.w700),
                  hintStyle: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1.5,
                      color: Colors.white70,
                      fontWeight: FontWeight.w700),
                  fillColor: Colors.white.withOpacity(.3),
                  focusColor: Colors.transparent),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25),
            child: ButtonTheme(
              minWidth: MediaQuery.of(context).size.width,
              height: 55,
              child: RaisedButton(
                onPressed: () {
                  signup();
                },
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  'Create Account',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 22),
                ),
              ),
            ),
          ),
          Container(
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => LoginScreen()));
                  },
                  child: Text("Login here")),
              alignment: Alignment.centerRight)
        ],
      ),
    );
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: true,
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blue, Colors.blue[400]],
                        //begin: Alignment.bottomCenter,
                        end: Alignment.bottomCenter,
                      ),
                      image: DecorationImage(
                        image: AssetImage('images/1.png'),
                        fit: BoxFit.cover,
                      )),
                  //margin: EdgeInsets.all(16),
                  alignment: Alignment.bottomCenter,
                  child: form),
            ),
    );
  }

  void signup() {
    if (_formkey.currentState.validate()) {
      setState(() {
        isLoading = true;
      });
      setState(() {
        autoValidate = false;
      });
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: _email, password: _password)
          .then((user) {
        // sign up
        postUserDataToDb();
      }).catchError((onError) {
        setState(() {
          isLoading = false;
        });
        Fluttertoast.showToast(msg: "error " + onError.toString());
      });
    } else {
      setState(() {
        autoValidate = true;
      });
    }
  }

  void postUserDataToDb() async {
    setState(() {
      isLoading = true;
    });

    //FirebaseUser firebaseUser = await FirebaseAuth.instance.currentUser();
    User firebaseUser = FirebaseAuth.instance.currentUser;

    UserModel userModel = new UserModel();
    userModel.email = _email;
    userModel.name = _name;
    userModel.mobile = _mobile;
    userModel.collegename = _collegename;
    userModel.uid = firebaseUser.uid;

    // await FireStore.instance
    //     .collection("user")
    //     .document(firebaseUser.uid)
    //     .setData(userModel.toMap());

    await FirebaseFirestore.instance
        .collection("user")
        .doc(firebaseUser.uid)
        .set(userModel.toMap());

    Fluttertoast.showToast(msg: "Register Success");

    //await FirebaseUtils.updateFirebaseToken();

    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (_) => FirstScreen()),
        (Route<dynamic> route) => false);

    setState(() {
      isLoading = false;
    });
  }
}
