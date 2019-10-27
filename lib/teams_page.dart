import 'package:flutter/material.dart';

//home page to have routes to all other pages
class TeamsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Avalible Teams"),
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
          )
        ],
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
              onPressed: (){null;},
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