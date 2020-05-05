import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: MyListView(),
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.all(30),
      children: <Widget>[
        MyItem('title1', 'subtitle1'),
        Divider(),
        MyItem('title2', 'subtitle2'),
        Divider(),
        MyItem('title3', 'subtitle3'),
        Divider(),
        MyItem('title2', 'subtitle2'),
        Divider(),
        MyItem('title3', 'subtitle3'),
        Divider(),
        MyItem('title2', 'subtitle2'),
        Divider(),
        MyItem('title2', 'subtitle2'),


      ],
    );
  }
}

class MyItem extends StatelessWidget {
  final String title;
  final String subTile;

  MyItem(this.title, this.subTile);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontSize: 30, color: Colors.red),
          ),
          Text(subTile)
        ],
      ),
    );
  }
}
