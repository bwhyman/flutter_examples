import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SliverAppBarDemo(),
    );
  }
}

class SliverAppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            primary: true,
            expandedHeight: 200,
            pinned: true,
            floating: true,
            snap: false,
            flexibleSpace: _getFlexBar(),
          )
        ];
      },
      body: _getListItems(),
    ));
  }

  _getFlexBar() {
    return FlexibleSpaceBar(
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Leila Hatami', style: TextStyle(fontSize: 12)),
          Text(
            'Ecole Polytechnique Fédérale de Lausanne',
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
      background: Image.asset(
        'images/hijab.jpg',
        fit: BoxFit.fill,
      ),
    );
  }

  _getListItems() {
    return ListView.separated(
      padding: const EdgeInsets.all(10),
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(title: Text('条目$index'));
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }
}
