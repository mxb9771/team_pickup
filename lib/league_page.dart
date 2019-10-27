import 'package:flutter/material.dart';

//home page to have routes to all other pages
class LeaguesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Leagues"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.red,
              child: Text("Open League, 5v5 Meets on Sundays"),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JoinLeague()));
              },
            )
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text("Pro League, Talented Players"),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text("Closed League"),
            )
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text("Create a League"),
              onPressed: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateLeague()));
              },
            ),
          ),
          )
        ],
      ),
    );
  }
}

class CreateLeague extends StatelessWidget{
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


class JoinLeague extends StatelessWidget{
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
            child: Text("League Discription:\nModerate Skill levels, all teams accepted. Games on Sundays."),
          ),
          Container(
            child: Text("Teams:",
            style: TextStyle(fontSize: 30),),
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.red,
              child: Text("The Spartans"),
              onPressed: (){
                return null;
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
              child: Text("Send Join Request"),
              onPressed: (){null;},
            ),
          ),
        ],
      ),
    );
  }

}