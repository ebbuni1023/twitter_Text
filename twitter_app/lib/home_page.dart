import 'package:flutter/material.dart';
import 'package:twitter_app/stats.dart';

class home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => stat_page()),
            );
          },
          child: Text('stat Graph'),
        ),
      ),
    );
  }
}
