import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                  bottom: _getTabAppBar(),
                )
              ];
            },
            body: _getTabBarView()),
      ),
    );
  }

  _getFlexBar() {
    return FlexibleSpaceBar(
      title: Container(
        padding: EdgeInsets.only(bottom: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Leila Hatami', style: TextStyle(fontSize: 12)),
            Text(
              'Ecole Polytechnique Fédérale de Lausanne',
              style: TextStyle(fontSize: 10),
            ),
          ],
        ),
      ),
      background: Image.asset(
        'images/hijab.jpg',
        fit: BoxFit.fill,
      ),
    );
  }

  TabBar _getTabAppBar() {
    return TabBar(
      tabs: [
        Tab(icon: Icon(Icons.directions_car)),
        Tab(icon: Icon(Icons.directions_transit)),
        Tab(icon: Icon(Icons.directions_bike)),
      ],
    );
  }

  _getTabBarView() {
    return TabBarView(
      children: [
        _getCarListItems(),
        Icon(Icons.directions_transit, color: Colors.pink, size: 60),
        Icon(Icons.directions_bike, color: Colors.pink, size: 60),
      ],
    );
  }

  _getCarListItems() {
    return ListView.separated(
      key: PageStorageKey('list'),
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
