

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

          TextFormField(
            controller: nameController,
            decoration: new InputDecoration(
              hintText: "Username",
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
              child: Text("Submit", style: TextStyle(color: Colors.white)),
              onPressed: _checkLogin,
            ),
          ),
          Container(
            child: RaisedButton(
              color: Colors.red,
              child: Text("Register", style: TextStyle(color: Colors.white)),
              onPressed: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterPage(database: database,)));
              },
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
