import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        backgroundColor: Colors.green,
        title: Text('TwitUser',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(
            Icons.exit_to_app,
            size: 25,
            color: Colors.white,
          ),
            onPressed: () => {
              // do something
              SystemNavigator.pop(),
            },
          ),
        ],
      ),
      body: HomeBody(),
    );
  }
}



class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
      ),
      child: new BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(),
            ],
          ),
        ),
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
  //TextEditingController UnameController = new TextEditingController();
  /*_userlatest() {
    username = UnameController.text;
  }
  void initState() {
    super.initState();
    // Start listening to changes.
    UnameController.addListener(_userlatest);
  }
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    UnameController.dispose();
    super.dispose();
  }
*/
  @override
  Widget build(BuildContext context) {

    Container _Intro(){
      return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(bottom: 20),
        child: Text(
          'Enter the twitter username here to get the Stats!',
          style: TextStyle(color: Colors.black87, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      );
    }

    Container _textfi(){
      return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            Center(
              child: TextFormField(
                onChanged: (newVal){
                  username=newVal;
                },
                //controller: UnameController,
                decoration: InputDecoration(
                  hintText: 'Enter the @username',
                  labelText: 'Username',
                ),
              ),
            ),

            Container(
              alignment: Alignment.center,
              child: RaisedButton(
                color: Colors.blueAccent,
                  child: Text('Enter', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  onPressed: () => {
                  if (username.length<2){
                    print('less')
                    }else{
                    Navigator.of(context).pop(),
                  Navigator.pushNamed(context, '/user_stat', arguments: {'username': username})
                  }}),
            )
          ],
        ),
      );
    }

    return Container(
        child: Center(
          child: Container(
            child: Column(
              children: [
                _Intro(),
                _textfi(),
              ],
            ),
          ),
        ),
    );
  }
}