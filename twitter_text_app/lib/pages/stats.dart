import 'package:flutter/material.dart';
import 'package:twitter_text_app/widgets/nav-bar.dart';
import 'package:http/http.dart';
import 'dart:async';

var username;

class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    final Map<String, Object> UserData =  ModalRoute.of(context).settings.arguments;
    username ='${UserData['username']}';
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('TwitUser',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(
            Icons.home_outlined,
            size: 25,
            color: Colors.white,
          ),
            onPressed: () => {
              // do something
              Navigator.pushNamed(context, '/home')
            },
          ),
        ],
      ),
      body: StatBody(),
    );
  }
}

Future<http.Response> createAlbum(String title) {
  return http.post(
    'https://jsonplaceholder.typicode.com/albums',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': title,
    }),
  );
}

class StatBody extends StatefulWidget {
  @override
  _StatBodyState createState() => _StatBodyState();
}

class _StatBodyState extends State<StatBody> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
