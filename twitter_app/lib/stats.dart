import 'package:flutter/material.dart';

class Stat_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('stat Graph'),
        ),
      ),
    );
  }
}

class State_page extends StatefulWidget {
  State_page ({Key key, this.title}) : super(key: key);
  final String title;
}
class _StatePageState extends State<State_page> {
  int _counter = 0;
  void initState()
  {
    setState((){
      var data = [
        addcharts("val 1")
      ];
    })
  }
}
