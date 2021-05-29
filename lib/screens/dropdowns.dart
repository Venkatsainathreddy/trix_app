import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trix_app/mainscreens/mainscreen.dart';
import 'package:trix_app/screens/signupscreen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<FirstScreen> {
  String title = 'DropDownButton';
  String _collegeVal;
  List _collegeName = [
    'MLR Inst Of Technology',
    'Inst of Aeronautical Engineering',
    'St. Martins Engineering College',
  ];

  String title2 = 'DropDownButton';
  String _semVal;
  List _semName = [
    'Sem 1',
    'Sem 2',
    'Sem 3',
    'Sem 4',
    'Sem 5',
    'Sem 6',
    'Sem 7',
    'Sem 8',
  ];

  String title3 = 'DropDownButton';
  String _deptVal;
  List _deptName = [
    'ECE',
    'CSE',
    'IT',
    'Mechanical',
    'Aeronautical',
    'Civil',
    'Mechanical',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //resizeToAvoidBottomInset: false,
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.logout, color: Colors.white),
                onPressed: () {
                  FirebaseAuth.instance.signOut().then(
                    (onvalue) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Signupscreen()));
                    },
                  );
                })
          ],
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.blue[400]],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                image: DecorationImage(
                  image: AssetImage('images/1.png'),
                  fit: BoxFit.cover,
                )),
            child: Center(
                child: Container(
              height: 500,
              width: 450,
              //color: Colors.grey,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 50),
                  Center(
                    child: Container(
                      width: 350,
                      height: 55,
                      padding: EdgeInsets.only(left: 25.0, right: 25.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                        //border: Border.all()
                      ),
                      child: DropdownButton(
                        hint: Text('Select your College Name',
                            style: TextStyle(
                                color: Colors.blueGrey,
                                //fontWeight: FontWeight.w700,
                                fontSize: 22)),
                        dropdownColor: Colors.white,
                        elevation: 5,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 36.0,
                        isExpanded: true,
                        value: _collegeVal,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19.0,
                        ),
                        onChanged: (value) {
                          setState(() {
                            _collegeVal = value;
                          });
                        },
                        items: _collegeName.map((value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 350,
                    height: 55,
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      //border: Border.all()
                    ),
                    child: DropdownButton(
                      hint: Text('Select your Semester',
                          style: TextStyle(
                              color: Colors.blueGrey,
                              //fontWeight: FontWeight.w700,
                              fontSize: 22)),
                      dropdownColor: Colors.white,
                      elevation: 5,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36.0,
                      isExpanded: true,
                      value: _semVal,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19.0,
                      ),
                      onChanged: (value) {
                        setState(() {
                          _semVal = value;
                        });
                      },
                      items: _semName.map((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 350,
                    height: 55,
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      //border: Border.all()
                    ),
                    child: DropdownButton(
                      hint: Text('Select your Branch',
                          style: TextStyle(
                              color: Colors.blueGrey,
                              //fontWeight: FontWeight.w700,
                              fontSize: 22)),
                      dropdownColor: Colors.white,
                      elevation: 5,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36.0,
                      isExpanded: true,
                      value: _deptVal,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19.0,
                      ),
                      onChanged: (value) {
                        setState(() {
                          _deptVal = value;
                        });
                      },
                      items: _deptName.map((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25),
                    child: ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width,
                      height: 55,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => MainScreen()));
                        },
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                          'Submit',
                          style:
                              TextStyle(color: Colors.blueGrey, fontSize: 22),
                        ),
                      ),
                    ),
                  ),

                  /*Container(
                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                  decoration: BoxDecoration(
	              border: Border.all(color: Colors.grey),
                 	borderRadius: BorderRadius.circular(3.0)
                 ),
            child: DropdownButton<String>(
	          value: dropdownValue,
	          isExpanded: true,
	          icon: Icon(Icons.keyboard_arrow_down, size: 22),
	          underline: SizedBox(),
	          items: <String>[
                              'MLR Institute of Technology',
                               
                              
                    ].map((String value) {
	  return new DropdownMenuItem<String>(
		value: value,
		child: new Text(value),
	  );
	}).toList(),
	onChanged: (value) {
	  //Do something with this value
	  setState(() {
		dropdownValue = value;
	  });
	},
  ),
),*/
                ],
              ),
            ))));
  }
}
