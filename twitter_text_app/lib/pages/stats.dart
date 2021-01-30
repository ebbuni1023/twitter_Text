import 'package:flutter/material.dart';
import 'package:twitter_text_app/widgets/nav-bar.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter_echarts/flutter_echarts.dart';
import 'dart:convert';
import 'dart:io';


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

Future<http.Response> postRequest() async {
  //Enter the api endpoint her
  var url = 'http://10.0.2.2:8000/text_detect/detect/';

  Map data = {
    'username': '$username'
  };
  //
  var body = json.encode(data);

  var response = await http.post(url,
      headers: {"Content-Type": "application/json"},
      body: body
  );
  print("${response.statusCode}");
  //this is where you will get the data for charts
  print("${response.body}");
  return response;
}

class StatBody extends StatefulWidget {
  @override
  _StatBodyState createState() => _StatBodyState();
}

class _StatBodyState extends State<StatBody> {
  _pr(){print(postRequest());}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _pr(),
    );
  }
}
