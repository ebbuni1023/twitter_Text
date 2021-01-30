import 'package:flutter/material.dart';
import 'package:twitter_app/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Registration'),
        ),
        body: Center(
            child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: FlatButton(
              child: Text('Welcome to Twitter_Text'),
              onPressed: () {},
            ),
          ),
          TextField(
            decoration: InputDecoration(
              filled: true,
              labelText: 'Email',
            ),
          ),
          SizedBox(height: 12.0),
          TextField(
            decoration: InputDecoration(
              filled: true,
              labelText: 'User Name',
            ),
            obscureText: true,
          ),
          SizedBox(height: 12.0),
          TextField(
            decoration: InputDecoration(
              filled: true,
              labelText: 'Password',
            ),
            obscureText: true,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: FlatButton(
              child: Text('Sign Up'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {},
            ),
          ),
        ])),
        //home: SplashScreen(),
      ),
    );
  }
}
