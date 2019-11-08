

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:team_pickup/main.dart';
import 'package:team_pickup/register_page.dart';

import 'Model/database.dart';
import 'Model/user.dart';

class LoginPage extends StatefulWidget{
  Database database;
  LoginPage({Key key, this.database});
  @override
  State<StatefulWidget> createState() => _loginPageState(database: database);
  }

class _loginPageState extends State<LoginPage>{
  Database database;
  final nameController = TextEditingController();
  final passController = TextEditingController();
  _loginPageState({Key key, this.database});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Login"),),
    body: Column(
        children: <Widget>[
          Container(
            child: RaisedButton(
              color: Colors.red,
              child: Text("Register"),
              onPressed: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterPage(database: database,)));
              },
          ),
          ),
          Container(
            child: Text("Or Log In Below:"),
          ),
          TextFormField(controller: nameController, decoration: new InputDecoration.collapsed(hintText: "Name"),),
          TextFormField(controller: passController, decoration: new InputDecoration.collapsed(hintText: "Password"),),
          Container(
            child: RaisedButton(
              color: Colors.red,
              child: Text("Login"),
              onPressed: _checkLogin,
          ),
          ),
        ],
    ),
    );
  }

  void _checkLogin(){
    var username = nameController.text;
    var password = passController.text;
    var test = database.checkAccount(username, password);
    if (test == true){
      User user = new User(username, password);
       Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage(user: user, database: database,)));
    }
    else{

    }
  }

}
