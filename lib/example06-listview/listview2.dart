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
    return _buildListView(30);
  }

  ListView _buildListView(int count) {
    return ListView.builder(
        padding: EdgeInsets.all(5),
        itemCount: count,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(15),
            child: Text(
              '条目$index',
              style: TextStyle(fontSize: 20),
            ),
          );
        });
  }

  ListView _buildListView2(int count) {
    return ListView.separated(
      padding: EdgeInsets.all(5),
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.all(15),
          child: Text(
            '条目$index，带自定义分隔符',
            style: TextStyle(fontSize: 20),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }
}
