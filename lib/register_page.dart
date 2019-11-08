

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Model/database.dart';
import 'Model/user.dart';
import 'main.dart';

class RegisterPage extends StatefulWidget{
  Database database;
  RegisterPage({Key key, this.database});
    @override
  State<StatefulWidget> createState() => _RegisterScreenState(database: database);
  }



class _RegisterScreenState extends State<RegisterPage>{
  Database database;
  _RegisterScreenState({Key key, this.database});
  final nameController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Registration'),),
    body: Column(children: <Widget>[
      TextFormField(controller: nameController, decoration: new InputDecoration.collapsed(hintText: "Name"),),
      TextFormField(obscureText: true, controller: passController,decoration: new InputDecoration.collapsed(hintText: "Password"),),
      Container(
            child: RaisedButton(
              color: Colors.red,
              child: Text("Register"),
              onPressed: _createUser,
          ),
          ),
    ]
    ),
    );
  }

  void _createUser(){
    User u = new User(nameController.text, passController.text);
    database.addAcount(nameController.text, passController.text);
    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage(user: u, database: database,)));
  }

}