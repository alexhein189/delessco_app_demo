import 'package:flutter/material.dart';
import 'package:flutter_auth/volunteer/HomeScreen.dart';
import 'package:flutter_auth/vulnerable_person/HomeScreen.dart';

class ChooseUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ButtonTheme(
            child: FlatButton(
              color: Colors.blue,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Home_screen()));
              },
              child: Text(
                "Volunteer",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          ButtonTheme(
            child: FlatButton(
              color: Colors.blue,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => volunteer_home_screen()));
              },
              child: Text(
                "Vulnerable",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
