import 'package:flutter/material.dart';
import 'package:team_pickup/profile_page.dart';

import 'Model/database.dart';

enum widgetMarker{main, create, created}

//home page to have routes to all other pages
class TeamsPage extends StatelessWidget {
  Database database;
  TeamsPage({Key key, this.database});
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Teams"),
      ),
      body: _teamsPage(database: database,)
    );
  }
}

class _teamsPage extends StatefulWidget{
  Database database;
  _teamsPage({Key key, this.database});
  @override
  State<StatefulWidget> createState() => _mainBody(database: database);
}

class _mainBody extends State<_teamsPage>{
  final nameController = TextEditingController();
  final bioController = TextEditingController();
  widgetMarker select = widgetMarker.main;
  Database database;
  _mainBody({Key key, this.database});
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(child: RaisedButton(
              child: Text("Create a Team"),
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
      return createTeam(context, database);
    }
  }

Widget getMain(BuildContext context){
    return Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.red,
              child: Text("The Spartans", style: TextStyle(color: Colors.white)),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JoinTeam()));
              },
            )
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text("Knights"),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text("Team Fuego"),
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

Widget createTeam(BuildContext context, Database database){
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
                  MaterialPageRoute(builder: (context) => CreatedTeam(database: database, name: nameController.text, bio: bioController.text)));
              },
            ),
          ),
          ],
    );
  }
}

class CreatedTeam extends StatelessWidget{
  Database database;
  String name;
  String bio;
  CreatedTeam({Key key, this.database, this.name, this.bio});
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
              child: Text("The Spartans", style: TextStyle(color: Colors.white)),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JoinTeam()));
              },
            )
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text("Knights"),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text("Team Fuego"),
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



class JoinTeam extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Team Overview"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: 50,
              height: 50,
              child: Image.asset('assets/images/spartan.jpg')
          ),
          Container(
            child: Text("Team Discription:\nLucas is the worst player on the team"),
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text("View Players"),
              onPressed: (){Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ViewTeam()));},
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text("Send Join Request"),
              onPressed: (){null;},
            ),
          )
        ],
      ),
    );
  }

}

class ViewTeam extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Players"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            child: Image.asset('assets/images/profile.jpg'),
          ),
          SizedBox(
            width: 100,
            child: RaisedButton(
              child: Text("Lucas"),
              onPressed: (){Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));},
            )
          ),
        ],
      ),
    );
  }
}