//import 'package:vulnerablepersonui/Cart-screen.dart';
//import 'package:vulnerablepersonui/help_screen.dart';
//import 'package:vulnerablepersonui/item_screen.dart';
//import 'package:vulnerablepersonui/orderhistory_screen.dart';
//import 'package:vulnerablepersonui/setting-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/volunteer/message_screen.dart';
//import 'Account_screen.dart';
import 'profile_page.dart';

const String _kGalleryAssetsPackage = 'flutter_gallery_assets';

class Home_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new home();
// TODO: implement createState

}

class Photo {
  Photo({
    this.assetName,
    this.assetPackage,
    this.title,
    this.caption,
  });

  final String assetName;
  final String assetPackage;
  final String title;
  final String caption;
}

class home extends State<Home_screen> {
  List list = ['12', '11'];

  List<Photo> photos_grocery = <Photo>[
    Photo(
      assetName: 'images/fruits.jpg',
      title: 'Fresh Fruits',
    ),
    Photo(
      assetName: 'images/vegetables.jpg',
      title: 'Fresh Vegetables',
    ),
    Photo(
      assetName: 'images/frozen.jpg',
      title: 'Frozen Food',
    ),
    Photo(
      assetName: 'images/back.jpg',
      title: 'Food Cupboard',
    ),
    Photo(
      assetName: 'images/backery1.jpg',
      title: 'Bakery',
    ),
    Photo(
      assetName: 'images/dairy.jpg',
      title: 'Dairy & Eggs',
    ),
    Photo(
      assetName: 'images/drinks.jpg',
      title: 'Drinks',
    ),
    Photo(
      assetName: 'images/medicine1.jpg',
      title: 'Medicine',
    ),
  ];

  static const double height = 366.0;
  String name = 'My Wishlist';

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    _verticalDivider() => Container(
      padding: EdgeInsets.all(2.0),
    );
    _verticalD() => Container(
      margin: EdgeInsets.only(left: 3.0, right: 0.0, top: 0.0, bottom: 0.0),
    );

    final Orientation orientation = MediaQuery.of(context).orientation;
    final ThemeData theme = Theme.of(context);
    final TextStyle titleStyle =
    theme.textTheme.headline.copyWith(color: Colors.black54);
    final TextStyle descriptionStyle = theme.textTheme.subhead;
    ShapeBorder shapeBorder;

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.purple,
        title: Center(child: Text("Home")),
        actions: <Widget>[
          IconButton(
            tooltip: 'Search',
            color: Colors.black,
            icon: const Icon(Icons.search),
            onPressed: () async {
              final int selected = await showSearch<int>(
                context: context,
                //delegate: _delegate,
              );
            },
          ),
          new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Container(
              height: 150.0,
              width: 30.0,
              child: new GestureDetector(
                onTap: () {
                  /*Navigator.of(context).push(
                  new MaterialPageRoute(
                      builder:(BuildContext context) =>
                      new CartItemsScreen()
                  )
              );*/
                },
                child: Stack(
                  children: <Widget>[
                    new IconButton(
                        icon: new Icon(
                          Icons.shopping_cart,
                          color: Colors.black,
                        ),
                        onPressed: () {
//                          Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                  builder: (context) => Cart_screen()));
                        }),
                    list.length == 0
                        ? new Container()
                        : new Positioned(
                        child: new Stack(
                          children: <Widget>[
                            new Icon(Icons.brightness_1,
                                size: 20.0, color: Colors.orange.shade500),
                            new Positioned(
                                top: 4.0,
                                right: 5.5,
                                child: new Center(
                                  child: new Text(
                                    list.length.toString(),
                                    style: new TextStyle(
                                        color: Colors.white,
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new Card(
              child: UserAccountsDrawerHeader(
                accountName: new Text("Alex Hein"),
                accountEmail: new Text("jane_smith@gmail.com"),
                onDetailsPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfilePage()));
                },
                decoration: new BoxDecoration(
                  backgroundBlendMode: BlendMode.difference,
                  color: Colors.grey,

                  /* image: new DecorationImage(
               //   image: new ExactAssetImage('assets/images/lake.jpeg'),
                  fit: BoxFit.cover,
                ),*/
                ),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('images/alex.jpg')),
              ),
            ),
            new Card(
              elevation: 4.0,
              child: new Column(
                children: <Widget>[
                  new ListTile(
                      leading: Icon(Icons.message),
                      title: new Text("Messages"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MessageScreen()));
                      }),
                  new Divider(),
                  new ListTile(
                      leading: Icon(Icons.history),
                      title: new Text("Order History "),
                      onTap: () {
//                        Navigator.push(
//                            context,
//                            MaterialPageRoute(
//                                builder: (context) => Oder_History(
//                                  toolbarname: ' Order History',
//                                )));
                      }),
                ],
              ),
            ),
            new Card(
              elevation: 4.0,
              child: new Column(
                children: <Widget>[
                  new ListTile(
                      leading: Icon(Icons.settings),
                      title: new Text("Setting"),
                      onTap: () {
//                        Navigator.push(
//                            context,
//                            MaterialPageRoute(
//                                builder: (context) => Setting_Screen(
//                                  toolbarname: 'Setting',
//                                )));
                      }),
                  new Divider(),
                  new ListTile(
                      leading: Icon(Icons.help),
                      title: new Text("Help"),
                      onTap: () {
//                        Navigator.push(
//                            context,
//                            MaterialPageRoute(
//                                builder: (context) => Help_Screen(
//                                  toolbarname: 'Help',
//                                )));
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
      body: new SingleChildScrollView(
        child: Container(
          child: new Column(children: <Widget>[
            new SizedBox(
              height: 6.0,
            ),
            new Container(
              margin: EdgeInsets.all(10.0),
              child: new Text(
                'Vulnerable People',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
            ),
            new Container(
              margin: EdgeInsets.all(10.0),
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 35,
                        backgroundImage: AssetImage('images/alex.jpg'),
                      ),
                      SizedBox(
                        width: 15,
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
                                new Row(
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
                                  ],
                                ),
                                _verticalDivider(),
                                new Text(
                                  "New Request",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5),
                                ),
                                _verticalDivider(),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(50, 5, 0, 4),
                              child: new Text(
                                "23 minutes ago",
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.5),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 140),
                              child: new Container(
                                color: Colors.grey[300],
                                alignment: Alignment.centerLeft,
                                child: IconButton(
                                    icon: arrow_message,
                                    color: Colors.greenAccent,
                                    onPressed: () {}),
                              ),
                            )
                          ],)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            _verticalDivider(),
            new Container(
              margin: EdgeInsets.all(10.0),
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 35,
                        backgroundImage: AssetImage('images/alex.jpg'),
                      ),
                      SizedBox(
                        width: 15,
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
                                new Row(
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
                                  ],
                                ),
                                _verticalDivider(),
                                new Text(
                                  "Request Sent",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 13.0,
                                      letterSpacing: 0.5),
                                ),
                                _verticalDivider(),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(50, 5, 0, 4),
                                child: new Text(
                                  "23 minutes ago",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 140),
                                child: new Container(
                                  color: Colors.grey[300],
                                  alignment: Alignment.centerLeft,
                                  child: IconButton(
                                      icon: arrow_message,
                                      color: Colors.greenAccent,
                                      onPressed: () {}),
                                ),
                              )
                            ],)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            _verticalDivider(),
            new Container(
              margin: EdgeInsets.all(10.0),
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 35,
                        backgroundImage: AssetImage('images/alex.jpg'),
                      ),
                      SizedBox(
                        width: 15,
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
                                new Row(
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
                                  ],
                                ),
                                _verticalDivider(),
                                new Text(
                                  "Request Sent",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 13.0,
                                      letterSpacing: 0.5),
                                ),
                                _verticalDivider(),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(50, 5, 0, 4),
                                child: new Text(
                                  "23 minutes ago",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 140),
                                child: new Container(
                                  color: Colors.grey[300],
                                  alignment: Alignment.centerLeft,
                                  child: IconButton(
                                      icon: arrow_message,
                                      color: Colors.greenAccent,
                                      onPressed: () {}),
                                ),
                              )
                            ],)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            _verticalDivider(),
            new Container(
              margin: EdgeInsets.all(10.0),
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 35,
                        backgroundImage: AssetImage('images/alex.jpg'),
                      ),
                      SizedBox(
                        width: 15,
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
                                new Row(
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
                                  ],
                                ),
                                _verticalDivider(),
                                new Text(
                                  "Request Sent",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 13.0,
                                      letterSpacing: 0.5),
                                ),
                                _verticalDivider(),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(50, 5, 0, 4),
                                child: new Text(
                                  "23 minutes ago",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 140),
                                child: new Container(
                                  color: Colors.grey[300],
                                  alignment: Alignment.centerLeft,
                                  child: IconButton(
                                      icon: arrow_message,
                                      color: Colors.greenAccent,
                                      onPressed: () {}),
                                ),
                              )
                            ],)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            _verticalDivider(),
            new Container(
              margin: EdgeInsets.all(10.0),
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 35,
                        backgroundImage: AssetImage('images/alex.jpg'),
                      ),
                      SizedBox(
                        width: 15,
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
                                new Row(
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
                                  ],
                                ),
                                _verticalDivider(),
                                new Text(
                                  "Request Sent",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 13.0,
                                      letterSpacing: 0.5),
                                ),
                                _verticalDivider(),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(50, 5, 0, 4),
                                child: new Text(
                                  "23 minutes ago",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 140),
                                child: new Container(
                                  color: Colors.grey[300],
                                  alignment: Alignment.centerLeft,
                                  child: IconButton(
                                      icon: arrow_message,
                                      color: Colors.greenAccent,
                                      onPressed: () {}),
                                ),
                              )
                            ],)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            _verticalDivider(),
            new Container(
              margin: EdgeInsets.all(10.0),
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 35,
                        backgroundImage: AssetImage('images/alex.jpg'),
                      ),
                      SizedBox(
                        width: 15,
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
                                new Row(
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
                                  ],
                                ),
                                _verticalDivider(),
                                new Text(
                                  "Request Sent",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 13.0,
                                      letterSpacing: 0.5),
                                ),
                                _verticalDivider(),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(50, 5, 0, 4),
                                child: new Text(
                                  "23 minutes ago",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 140),
                                child: new Container(
                                  color: Colors.grey[300],
                                  alignment: Alignment.centerLeft,
                                  child: IconButton(
                                      icon: arrow_message,
                                      color: Colors.greenAccent,
                                      onPressed: () {}),
                                ),
                              )
                            ],)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            _verticalDivider(),
            new Container(
              margin: EdgeInsets.all(10.0),
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 35,
                        backgroundImage: AssetImage('images/alex.jpg'),
                      ),
                      SizedBox(
                        width: 15,
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
                                new Row(
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
                                  ],
                                ),
                                _verticalDivider(),
                                new Text(
                                  "Request Sent",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 13.0,
                                      letterSpacing: 0.5),
                                ),
                                _verticalDivider(),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(50, 5, 0, 4),
                                child: new Text(
                                  "23 minutes ago",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 140),
                                child: new Container(
                                  color: Colors.grey[300],
                                  alignment: Alignment.centerLeft,
                                  child: IconButton(
                                      icon: arrow_message,
                                      color: Colors.greenAccent,
                                      onPressed: () {}),
                                ),
                              )
                            ],)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            _verticalDivider(),



          ]),
        ),
      ),
    );
  }

/*
  new Container(
  alignment: Alignment.topCenter,
  child: GridView.count(
  primary: true,
  crossAxisCount: 2,
  childAspectRatio: 0.80,
  children: List.generate(photos.length, (index) {
  return getStructuredGridCell(photos[index]);
  }),
  ))*/
  Icon keyloch = new Icon(
    Icons.message,
    color: Colors.black26,
  );

  Icon arrow_message = new Icon(
    Icons.arrow_forward,
    color: Colors.black26,
  );

  _verticalD() => Container(
    margin: EdgeInsets.only(left: 5.0, right: 0.0, top: 5.0, bottom: 0.0),
  );
}
