

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class RegisterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Registration'),),
    body: Column(children: <Widget>[
      TextFormField(decoration: new InputDecoration.collapsed(hintText: "Name"),),
      TextFormField(decoration: new InputDecoration.collapsed(hintText: "Password"),),
      Container(
            child: RaisedButton(
              color: Colors.red,
              child: Text("Register"),
              onPressed: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
          ),
          ),
    ]
    ),
    );
  }

}