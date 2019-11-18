import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final _emailController = TextEditingController();
    final _passwordController= TextEditingController();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'email'
            ),
          ),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
                labelText: 'password'
            ),
          ),
          RaisedButton(
            child: Text('Registro'),
              onPressed: ()
              {
                FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailController.text.toString().trim(), password: _passwordController.text).then((user){
                  Navigator.pushReplacementNamed(context, 'login');
                });
              }
          )
        ],
      ),
    );
  }
}
