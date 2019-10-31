

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:team_pickup/main.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Login"),),
    body: Column(
        children: <Widget>[
          Container(
            child: RaisedButton(
              color: Colors.red,
              child: Text("Register"),
          ),
          ),
          Container(
            child: Text("Or Log In Below:"),
          ),
          TextFormField(decoration: new InputDecoration.collapsed(hintText: "Name"),),
          TextFormField(decoration: new InputDecoration.collapsed(hintText: "Password"),),
          Container(
            child: RaisedButton(
              color: Colors.red,
              child: Text("Login"),
              onPressed: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
          ),
          ),
        ],
    ),
    );
  }

}