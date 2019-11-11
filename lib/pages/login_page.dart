import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _emailditingController;
  TextEditingController _psswdditingController;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: _emailditingController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'email',
                    
                    
                  ),
                ),
                TextField(
                  obscureText: true,
                  controller:  _psswdditingController,
                  decoration: InputDecoration(
                    hintText: 'password'
                    
                  ),
                ),
                RaisedButton(
                  child: Text('LogIn'),
                  onPressed: (){},
                ),
              ],
            ),
          ),
    );
  }
}