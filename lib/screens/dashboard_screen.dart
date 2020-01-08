import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardSreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text("Dashboard")
      ),
      body: Column(
        children: <Widget>[
          Text("This is the dashboard! yayy"),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/');
            },
          )
        ],
      )
    );
  }
}