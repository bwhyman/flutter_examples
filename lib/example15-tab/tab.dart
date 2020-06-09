import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:  MyHomePage(),
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
        appBar: AppBar(
          title: Text('Tabs Demo'),
          bottom: TabBar(
            tabs: _getTabs(),
          ),
        ),
        body: TabBarView(
          children:   _getTabBarViews(),
        ),
      ),
    );
  }

  _getTabs() {
    return [
      Tab(icon: Icon(Icons.directions_car)),
      Tab(icon: Icon(Icons.directions_transit)),
      Tab(icon: Icon(Icons.directions_bike)),
    ];
  }

  _getTabBarViews() {
    return [
      Icon(Icons.directions_car, color: Colors.pink, size: 60),
      Icon(Icons.directions_transit, color: Colors.pink, size: 60),
      Icon(Icons.directions_bike, color: Colors.pink, size: 60),
    ];
  }
}
