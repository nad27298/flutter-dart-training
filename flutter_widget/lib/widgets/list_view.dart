// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, prefer_final_fields, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_widget/models/choice.dart';

class MyListViewPage extends StatelessWidget {
  List<String> _miagi = List<String>.generate(500, (i) => "Miagi List: $i");

  @override
  Widget build(BuildContext context) {
    return _listViewHorizontal();
  }

  Widget _listView() {
    return ListView(
      children: [
        _buildListTitle(0),
        _buildListTitle(1),
        _buildListTitle(2),
        _buildListTitle(3),
        _buildListTitle(4),
        _buildListTitle(5),
      ],
    );
  }

  Widget _buildListTitle(int index) {
    return ListTile(
      leading: Icon(choices[index].icon),
      title: Text(choices[index].title),
    );
  }

  // ignore: unused_element
  Widget _listViewBuilder() {
    return ListView.builder(
      itemCount: _miagi.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('${_miagi[index]}'),
        );
      },
    );
  }

  // ignore: unused_element
  Widget _listViewHorizontal() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 150,
            color: Colors.blue,
          ),
          Container(
            width: 150,
            color: Colors.red,
          ),
          Container(
            width: 150,
            color: Colors.green,
          ),
          Container(
            width: 150,
            color: Colors.yellow,
          ),
          Container(
            width: 150,
            color: Colors.deepPurple,
          ),
        ],
      ),
    );
  }
}
