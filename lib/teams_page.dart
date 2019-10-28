import 'package:flutter/material.dart';

//home page to have routes to all other pages
class TeamsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Teams"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.red,
              child: Text("The Spartans"),
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
            child: RaisedButton(
              child: Text("Create a Team"),
              onPressed: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateTeam()));
              },
            ),
          ),
          )
        ],
      ),
    );
  }
}

class CreateTeam extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create a League"),),
      backgroundColor: Colors.white,
      body: Form(
        child: Column(
          children: <Widget>[
            TextFormField(decoration: new InputDecoration.collapsed(hintText: "Name"),),
            TextFormField(decoration: new InputDecoration.collapsed(hintText: "Sport"),),
            TextFormField(decoration: new InputDecoration.collapsed(hintText: "Bio"),),
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
              onPressed: (){null;},
            )
          ),
        ],
      ),
    );
  }
}