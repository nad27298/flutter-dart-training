// ignore_for_file: deprecated_member_use, prefer_const_constructors, avoid_print, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyTextButtonPage extends StatefulWidget {
  @override
  State<MyTextButtonPage> createState() => _MyTextButtonPageState();
}

class _MyTextButtonPageState extends State<MyTextButtonPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 25),
            padding: EdgeInsets.all(20),
            child: Text(
              'Click ${_index} time',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(25),
            child: FlatButton(
              child: Text(
                'Click',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                setState(() {
                  _index += 1;
                });
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(25),
            child: RaisedButton(
              child: Text(
                'Click',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: () {
                setState(() {
                  _index += 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
