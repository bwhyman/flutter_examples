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
      body: MyListView(20),
    );
  }
}

class MyListView extends StatelessWidget {
  final int count;

  MyListView(this.count);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
      itemCount: count,
      itemBuilder: (_, index) {
        return MyItem('条目$index', '带自定义分隔符');
      },
      separatorBuilder: (_, __) {
        return Divider();
      },
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
