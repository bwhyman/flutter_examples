import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
    // TODO: implement build
    return Scaffold(
      appBar: _getAppbar(),
      body: Center(
        child: Text('Context'),
      ),
    );
  }

  _getAppbar() {
    return AppBar(
      leading: Icon(Icons.ac_unit),
      title: Text('My AppBar'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.markunread_mailbox),
          onPressed: () {},
        ),
        _buildPopupMenuButton()
      ],
    );
  }

  PopupMenuButton _buildPopupMenuButton() {
    return PopupMenuButton(
      onSelected: (value) {
      },
      icon: Icon(Icons.menu),
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            value: 1,
            child: ListTile(
              leading: Icon(Icons.chat_bubble),
              title: Text('发起群聊'),
            ),
          ),
          PopupMenuItem(
            value: 2,
            child: ListTile(
              leading: Icon(Icons.person_add),
              title: Text('添加朋友'),
            ),
          ),
          PopupMenuItem(
            value: 3,
            child: ListTile(
              leading: Icon(Icons.aspect_ratio),
              title: Text('扫一扫'),
            ),
          ),
          PopupMenuDivider(),
          PopupMenuItem(
            value: 3,
            child: ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('收付款'),
            ),
          ),
        ];
      },
    );
  }
}

