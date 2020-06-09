import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Drawer Demo')),
        body: Center(child: Text('My Page!')),
        drawer: MyDrawer.getInstance());
  }
}

class MyDrawer extends StatelessWidget {
  static final MyDrawer _myDrawer = MyDrawer();

  MyDrawer();
  factory MyDrawer.getInstance() {
    return _myDrawer;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[_getDrawerHeader(), ..._getListTiles(context)],
      ),
    );
  }

  DrawerHeader _getDrawerHeader() {
    return DrawerHeader(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Column(
        children: <Widget>[
          Container(
            width: 110,
            child: FittedBox(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/hijab.jpg'),
                radius: 100,
              ),
            ),
          ),
          Text(
            'Leila Hatami',
            style: TextStyle(fontSize: 15),
          ),
          Text(
            'Ecole Polytechnique Fédérale de Lausanne',
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
    );
  }

  List<Widget> _getListTiles(BuildContext context) {
    return [
      ListTile(
        leading: Icon(Icons.assistant),
        trailing: Icon(Icons.chevron_right),
        title: Text('开通会员'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(Icons.monetization_on),
        trailing: Icon(Icons.chevron_right),
        title: Text('我的QQ钱包'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.favorite),
        title: Text('我的收藏'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(Icons.photo_album),
        title: Text('我的相册'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(Icons.videogame_asset),
        title: Text('我的小游戏'),
        onTap: () {
          Navigator.pop(context);
        },
      )
    ];
  }
}
