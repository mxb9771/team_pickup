import 'package:flutter/material.dart';
import 'package:team_pickup/Model/user.dart';
import 'package:team_pickup/league_page.dart';
import 'package:team_pickup/login_page.dart';
import 'package:team_pickup/profile_page.dart';
import 'package:team_pickup/teams_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pickup',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: LoginPage(),
    );
  }
}


//home page to have routes to all other pages
class HomePage extends StatelessWidget {
  User user;
  HomePage({Key key, this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Pickup"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.red,
                child: Text("Teams"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TeamsPage()));
                },
              )),
          SizedBox(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.red,
                child: Text("Leagues"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LeaguesPage()));
                },
              )),
          SizedBox(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.red,
                child: Text("Profile"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                },
              ))
        ],
      ),
    );
  }
}

