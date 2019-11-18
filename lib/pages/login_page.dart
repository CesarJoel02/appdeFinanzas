import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'email',
                  ),
                ),
                TextField(
                  obscureText: true,
                  controller:  _passwordController,
                  decoration: InputDecoration(
                    hintText: 'password'
                    
                  ),
                ),
                RaisedButton(
                  child: Text('LogIn'),
                  onPressed: (){

                    FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: _emailController.text,
                      password: _passwordController.text
                    ).then((user){
                      Navigator.pushReplacementNamed(context, 'summary');
                    }); 

                  },
                ),
                RaisedButton(
                  child: Text('Sign in'),
                    onPressed: (){
                    Navigator.pushNamed(context, 'register');
                    }
                ),
              ],
            ),
          ),
    );
  }
}