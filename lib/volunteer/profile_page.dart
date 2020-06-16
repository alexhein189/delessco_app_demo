import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';

import '../Screens/Welcome/welcome_screen.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  String username = 'Alex Hein';
  String mobilenumber = '076 4885 7248';
  String eid = 'alex_hein12@gmail.com';

  _verticalDivider() => Container(
    padding: EdgeInsets.all(2.0),
  );
  _verticalD() => Container(
    margin: EdgeInsets.only(left: 3.0, right: 0.0, top: 0.0, bottom: 0.0),
  );

  Icon menu = new Icon(
    Icons.more_vert,
    color: Colors.black38,
  );

  Icon keyloch = new Icon(
    Icons.vpn_key,
    color: Colors.black38,
  );
  //Create green background

  Widget _purpleColour() {
    return Positioned(
      top: 0,
      child: Container(
        color: Colors.purple,
        height: 430,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }

//  Widget _distance_from_volunteer() {
//    return Positioned(
//      top: 64,
//      child: Container(
//        margin: const EdgeInsets.all(10),
//        height: 40,
//        width: MediaQuery.of(context).size.width * 0.5,
//        decoration: BoxDecoration(
//            color: Colors.blue, borderRadius: BorderRadius.circular(20)),
//        child: Container(
//          child: Center(
//              child: Text(
//            "Distance from Vulnerable: 5 km",
//            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//          )),
//        ),
//      ),
//    );
//  }
  //Create backbutton and profile name

  Widget _appBar() {
    return Positioned(
      top: 10,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              width: 100,
            ),
            Text(
              "Profile",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              width: 100,
            ),
//            IconButton(
//              onPressed: () {},
//              icon: Icon(
//                Icons.add_shopping_cart,
//                color: Colors.white,
//              ),
//            ),
          ],
        ),
      ),
    );
  }

  //Create your own info

  Widget avatarPhoto() {
    return Positioned(
      top: 60,
      left: 30,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 45,
            backgroundImage: AssetImage('images/alex.jpg'),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: <Widget>[
              Text("Alex Hein",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20)),
              Text("\nTotal Trips:10",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20))
            ],
          ),
        ],
      ),
    );
  }

  Widget _userInfo() {
    Icon ofericon = new Icon(
      Icons.edit,
      color: Colors.black38,
    );
    return Positioned(
      top: 50,
      child: Container(
        margin: const EdgeInsets.fromLTRB(15, 20, 5, 20),
        height: 300,
        width: MediaQuery.of(context).size.width * 0.92,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Container(
          margin: EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 45,
                      backgroundImage: AssetImage('images/alex.jpg'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.only(
                              left: 10.0, top: 1.0, right: 5.0, bottom: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              new Text(
                                'Alex Hein',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              _verticalDivider(),
                              new Text(
                                mobilenumber,
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.5),
                              ),
                              _verticalDivider(),
                              new Text(
                                "alex_hein@gmail.com",
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.5),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        new Container(
                          color: Colors.grey[300],
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                              icon: ofericon,
                              color: Colors.greenAccent,
                              onPressed: () {}),
                        )
                      ],
                    ),
//                  ButtonTheme(
//                    child: FlatButton(
//                      color: Colors.blueAccent,
//                      shape: new RoundedRectangleBorder(
//                          borderRadius: new BorderRadius.circular(30.0)),
//                      onPressed: () {
//                        //TODO: NAVIGATE PAGE
//                      },
//                      child: Text(
//                        "Change",
//                        style: TextStyle(
//                            fontWeight: FontWeight.bold, color: Colors.white),
//                      ),
//                    ),
//                  ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              new Row(
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      Text(
                        "Total Trips: 5",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Total Distance: 12 km",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Hours on DELESSCO: 15",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  new Column(
                    children: <Widget>[
                      ButtonTheme(
                        child: FlatButton(
                          color: Colors.blue,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          onPressed: () {
                            //TODO: NAVIGATE PAGE
                          },
                          child: Text(
                            "Trip History",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      FlatButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        onPressed: () {},
                        color: Colors.red,
                        child: Text(
                          "Coins Earned",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 8, 8, 8),
                child: new Row(
                  children: <Widget>[
                    SizedBox(
                      width: 15,
                    ),
                    FlatButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Ratings',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        //The user picked true.
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FlatButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        onPressed: () {},
                        color: Colors.black,
                        child: Text(
                          "Availability ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //user address

  Widget _userAddress() {
    return Positioned(
        top: 370,
        child: Container(
            margin: EdgeInsets.all(20),
            height: 130,
            width: 244,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.greenAccent,
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Column(children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(
                          left: 12.0, top: 5.0, right: 0.0, bottom: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Text(
                            'Address',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                            ),
                          ),
                          _verticalDivider(),
                          new Text(
                            '25 Gower Street',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.0,
                                letterSpacing: 0.5),
                          ),
                          _verticalDivider(),
                          new Text(
                            'London',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.0,
                                letterSpacing: 0.5),
                          ),
                          _verticalDivider(),
                          new Text(
                            ' WC1E 6BS ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.0,
                                letterSpacing: 0.5),
                          ),
                          new Text(
                            ' Willing to travel: 5 miles',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.0,
                                letterSpacing: 0.5),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  new IconButton(
                    icon: menu, color: Colors.black38, onPressed: null,
                  ),
                ],
              ),
            )));
  }

  Widget log_in(){
    return Positioned(
      top: 530,
      width: MediaQuery.of(context).size.width * 0.96,
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 5, 20, 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[300],
        ),
        child: Container(
          child: Row(
            children: <Widget>[
              new IconButton(icon: keyloch, onPressed: null),
              _verticalD(),
              new Text(
                'Change Password',
                style: TextStyle(fontSize: 15.0, color: Colors.black87),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget log_out(){
    return Positioned(
      top: 590,
      width: MediaQuery.of(context).size.width * 0.96,
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 5, 20, 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[300],
        ),
        child: Container(
          child: Row(
            children: <Widget>[
              new IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WelcomeScreen()));
              }),
              _verticalD(),
              new Text(
                'Log Out',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black87,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width, //WHAT IS THIS?
//              color: Colors.purple,
            ),
            _purpleColour(),
//            _distance_from_volunteer(),
            _appBar(),
            _userInfo(),
            _userAddress(),
            log_in(),
            log_out(),
          ],
        ),
      ),
    );
  }
}