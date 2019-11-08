import 'package:flutter/material.dart';

import 'Model/database.dart';
import 'Model/user.dart';

//home page to have routes to all other pages
class ProfilePage extends StatelessWidget {
  User user;
  Database database;
  ProfilePage({Key key, this.user, this.database});

  @override
  Widget build(BuildContext context) {
    return 
    Material(
      child:  new Scaffold(
        appBar: AppBar(
          title: Text('Profile',
          textAlign: TextAlign.center,),
        ),
        body: new Stack(
          children: <Widget>[
        new Container(color: Colors.white,
        ),
        new Container(
          alignment: Alignment(0, -0.6),
          child: Container(
            child: Image.asset('assets/images/profile.jpg'),
            constraints: BoxConstraints(maxHeight: 300, maxWidth: 300),
          ),
        ),
        new Container(
          alignment: Alignment(0, 0.3),
          child: Text(user.getName(),
          style: TextStyle(fontSize: 50),),
        ),
        new Container(
          alignment: Alignment(0, 0.5),
          child: Container(
            child: Text("5'7 Point Guard with a lot of fight in him",
            style: TextStyle(fontSize: 30),),
            constraints: BoxConstraints(maxHeight: 300, maxWidth: 300),
          )
        )
      ]
    )
    )
    );
  }
}