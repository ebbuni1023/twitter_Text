import 'package:flutter/material.dart';

import '../widgets/nav-bar.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text('TwitUser',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: HomeBody(),
    );
  }
}



class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextField(),
        ],
      ),
    );
  }
}


class TextField extends StatefulWidget {
  @override
  _TextFieldState createState() => _TextFieldState();
}

class _TextFieldState extends State<TextField> {
  String username; 
  @override
  Widget build(BuildContext context) {
    
    Container _Intro(){
      return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(bottom: 20),
        child: Text(
          'Enter the twitter username here to get the data about the user!',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      );
    }
    
    Container _textfi(String Username){
      return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(40),
        child: Center(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Enter the @username',
              labelText: 'Username',
            ),
          ),
        ),
      );
    }
    return Container(
      child: Column(
        children: [
          _Intro(),
          _textfi('fsfsdfs'),
        ],
      ),
    );
  }
}