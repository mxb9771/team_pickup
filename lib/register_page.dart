

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
    return Scaffold(appBar: AppBar(title: Text('Register for Pickup'),),
    body: Column(children: <Widget>[
      TextFormField(
        controller: nameController,
        decoration: new InputDecoration(
            hintText: "Name",
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.redAccent,
                    width: 1.0)
            )

        ),
      ),
      TextFormField(
        controller: passController,
        decoration: new InputDecoration(
            hintText: "Password",
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.redAccent,
                    width: 1.0)
            )

        ),
      ),
      Container(
            child: RaisedButton(
              color: Colors.red,
              child: Text("Register", style: TextStyle(color: Colors.white)),
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