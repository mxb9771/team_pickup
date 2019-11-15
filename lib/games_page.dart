import 'package:flutter/material.dart';
import 'package:team_pickup/profile_page.dart';

//home page to have routes to all other pages
class GamesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Games"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.red,
              child: Text("5v5 Basketball", style: TextStyle(color: Colors.white)),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JoinGame()));
              },
            )
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text("Create a Game"),
              onPressed: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateGame()));
              },
            ),
          ),
          )
        ],
      ),
    );
  }
}

class CreateGame extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create a Game", ),),
      backgroundColor: Colors.white,
      body: Form(
        child: Column(
          children: <Widget>[
            TextFormField(decoration: new InputDecoration.collapsed(hintText: "Name"),),
            TextFormField(decoration: new InputDecoration.collapsed(hintText: "Sport"),),
            TextFormField(decoration: new InputDecoration.collapsed(hintText: "Time"),),
            TextFormField(decoration: new InputDecoration.collapsed(hintText: "Location"),),
            TextFormField(decoration: new InputDecoration.collapsed(hintText: "Player 1"),),
            TextFormField(decoration: new InputDecoration.collapsed(hintText: "Player 2"),),
            SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text("Submit"),
            ),
          ),
          ],
        ),
      ),
    );
  }
  
}


class JoinGame extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game Overview"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: Text("5v5 Basketball"),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: Text("Friday, November 15 2-5PM"),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: Text("RIT gym court 3"),
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text("View Players"),
              onPressed: (){Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ViewPlayers()));},
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

class ViewPlayers extends StatelessWidget{
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