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
      appBar: AppBar(
        title: Text('GridView Demo'),
      ),
      body: MyGridView(),
    );
  }
}

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
        maxCrossAxisExtent: 150,
        padding: EdgeInsets.all(4),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: _buildGridTileList(30)
    );
  }
/*
* 单写了一个私有方法，创建指定数量的组件
* */
  List<Widget> _buildGridTileList(int count) {
    List<Widget> containers = [];
    for(var i = 0; i < count; i++) {
      var image = Image.network('https://picsum.photos/id/$i/150');
      containers.add(image);
    }
    return containers;
  }
}
