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

class MyListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyListViewState();
  }
}

class MyListViewState extends State<MyListView> {
  List<Item> _items = [];
  int count = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      _items.add(Item('BO-${count++}'));
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RefreshIndicator(
      child: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _buildItem(_items[index]);
        },
      ),
      onRefresh: _onRefresh
    );
  }

  Future<void> _onRefresh() {
    return Future.delayed(Duration(seconds: 1), () {
      _items.add(Item('SUN-${count++}'));
      setState(() {});
    });
  }

  Widget _buildItem(Item item) {
    return Card(
      child: ListTile(
        title: Text(
          '${item.title}',
          style: TextStyle(fontSize: 20),
        ),
        trailing: IconButton(
            icon: Icon(Icons.delete, color: Colors.red), onPressed: () {}),
      ),
    );
  }
}

class Item {
  final String title;

  Item(this.title);
}
