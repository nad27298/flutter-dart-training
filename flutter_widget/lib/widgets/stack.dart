// ignore_for_file: prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyStackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.green,
            margin: EdgeInsets.all(20),
            child: Center(
              child: Text(
                'Green Container',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 320,
              height: 170,
              color: Colors.red,
              child: Center(
                child: Text(
                  'Red Container',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 250,
              height: 150,
              color: Colors.yellow,
              child: Center(
                child: Text(
                  'Yellow Container',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
