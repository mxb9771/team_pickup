import 'package:flutter/material.dart';
import 'package:team_pickup/teams_page.dart';

import 'Model/database.dart';

enum widgetMarker{main, create, created}

//home page to have routes to all other pages
class LeaguesPage extends StatelessWidget {
  Database database;
  LeaguesPage({Key key, this.database});
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Leagues"),
      ),
      body: _leaguesPage(database: database,)
    );
  }
}

class _leaguesPage extends StatefulWidget{
  Database database;
  _leaguesPage({Key key, this.database});
  @override
  State<StatefulWidget> createState() => _mainLeagueBody(database: database);
}

class _mainLeagueBody extends State<_leaguesPage>{
  final nameController = TextEditingController();
  final bioController = TextEditingController();
  widgetMarker select = widgetMarker.main;
  Database database;
  _mainLeagueBody({Key key, this.database});
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(child: RaisedButton(
              child: Text("Create a League"),
              onPressed: () {
                setState(() {
                  select = widgetMarker.create;
                });
              },
            ),),
    Container(
      child: getContainer(),
    ),
    ]);
  }

  Widget getContainer(){
    if (select == widgetMarker.main){
      return getMain(context);
    } else{
      return createLeague(context, database);
    }
  }

Widget getMain(BuildContext context){
    return Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.red,
              child: Text("5v5 Novice @ RIT", style: TextStyle(color: Colors.white)),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JoinLeague()));
              },
            )
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text("Private League"),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text("Private League"),
            )
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
            width: double.infinity,
          ),
          )
        ],
      );
  }

Widget createLeague(BuildContext context, Database database){
    return Column(
          children: <Widget>[
            TextFormField(decoration: new InputDecoration.collapsed(hintText: "Name"),
            controller: nameController,),
            TextFormField(decoration: new InputDecoration.collapsed(hintText: "Bio"),
            controller: bioController,),
            SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text("Submit"),
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CreatedLeague(database: database, name: nameController.text, bio: bioController.text)));
              },
            ),
          ),
          ],
    );
  }
}

class CreatedLeague extends StatelessWidget{
  Database database;
  String name;
  String bio;
  CreatedLeague({Key key, this.database, this.name, this.bio});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Teams"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.red,
              child: Text("5v5 Novice @ RIT", style: TextStyle(color: Colors.white)),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JoinLeague(database: database)));
              },
            )
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text("Private League"),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text("Private League"),
            )
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text(name),
            ),
          ),
        ]
      )
    );
  }
}



class JoinLeague extends StatelessWidget{
  Database database;
  JoinLeague({Key key, Database database});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("League Overview"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: 50,
              height: 50,
              child: Image.asset('assets/images/spartan.jpg')
          ),
          Container(
            child: Text("League Discription:\n 5v5 Basketball, meets on Tuesdays/Thursdays 5PM"),
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text("View Teams"),
              onPressed: (){Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TeamsPage(database: this.database,)));},
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text("Send Team Join Request"),
              onPressed: (){null;},
            ),
          )
        ],
      ),
    );
  }

}
