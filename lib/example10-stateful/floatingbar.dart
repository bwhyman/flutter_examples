import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomePage('Stateful Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage(this.title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int _count = 0;
  FloatingActionButtonLocation location;

  @override
  void initState() {
    super.initState();
  }

  _increment() {
    _count++;
    location = _count % 2 == 0
        ? FloatingActionButtonLocation.endFloat
        : FloatingActionButtonLocation.centerFloat;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButtonLocation: location,
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          '点击数量：$_count',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
