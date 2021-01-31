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
