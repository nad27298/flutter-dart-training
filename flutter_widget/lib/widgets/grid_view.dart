// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_widget/models/choice.dart';

class MyGridViewPage extends StatelessWidget {
  // ignore: prefer_const_constructors
  final TextStyle textStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return _gridViewBuilder();
  }

  Widget _gridViewCount() {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 4.0,
      children: [
        _buildCard(0),
        _buildCard(1),
        _buildCard(2),
        _buildCard(3),
        _buildCard(4),
      ],
    );
  }

  Widget _gridViewBuilder() {
    return GridView.builder(
      itemCount: choices.length,
      // ignore: prefer_const_constructors
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 8.0,
      ),
      itemBuilder: (context, index) {
        return _buildCard(index);
      },
    );
  }

  Widget _buildCard(int index) {
    return Card(
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            choices[index].icon,
            size: 50.0,
            color: textStyle.color,
          ),
          Text(
            choices[index].title,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
