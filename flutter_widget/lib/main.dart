// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/grid_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Widget"),
          centerTitle: true,
          leading: IconButton(icon: Icon(Icons.list), onPressed: () {}),
          actions: [
            IconButton(icon: Icon(Icons.share), onPressed: () => {}),
            IconButton(icon: Icon(Icons.settings), onPressed: () => {}),
          ],
        ),
        body: MyGridViewPage(),
      ),
    );
  }
}
