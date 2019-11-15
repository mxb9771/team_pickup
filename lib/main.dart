import 'package:flutter/material.dart';
import 'package:team_pickup/Model/database.dart';
import 'package:team_pickup/Model/user.dart';
import 'package:team_pickup/league_page.dart';
import 'package:team_pickup/login_page.dart';
import 'package:team_pickup/profile_page.dart';
import 'package:team_pickup/teams_page.dart';
import 'package:team_pickup/games_page.dart';


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
      home: LoginPage(database: new Database(),),
    );
  }
}


//home page to have routes to all other pages
class HomePage extends StatelessWidget {
  User user;
  Database database;
  HomePage({Key key, this.user, this.database});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Pickup"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.red,
              child: Text("Find Games", style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GamesPage()));
              },
            )),
          SizedBox(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.red,
                child: Text("Teams", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TeamsPage()));
                },
              )),
          SizedBox(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.red,
                child: Text("Leagues", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LeaguesPage()));
                },
              )),
          SizedBox(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.red,
                child: Text("Profile", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage(user: user,)));
                },
              ))
        ],
      ),
    );
  }
}

