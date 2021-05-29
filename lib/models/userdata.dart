import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String name;
  String mobile;
  String collegename;
  String collegeid;
  String email;
  Timestamp timestamp;
  String uid;
  // bool isMale;
  // int age;

  // 2nd part
  UserModel(
      {this.name,
      this.mobile,
      this.collegename,
      this.collegeid,
      this.email,
      this.timestamp,
      this.uid});

  //3rd creating map -- insert
  toMap() {
    // Map map = Map();
    // map["name"] = name;
    // return map;

    return {
      'name': name,
      'mobileNumber': mobile,
      'collegename': collegename,
      'collegeid': collegeid,
      'email': email,
      'uid': uid,
      'timestamp': FieldValue.serverTimestamp()
    };
  }

  // 4th part - from map to model object

  factory UserModel.fromMap(Map map) {
    return UserModel(
      name: map["name"],
      mobile: map["mobile"],
      collegename: map["collegename"],
      collegeid: map["collegeid"],
      email: map["email"],
      timestamp: map["timestamp"],
      uid: map["uid"],
    );
  }
}
