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
      body: Row(
        // 因为包裹的元素中有expanded，因此无效
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _getText('row-1'),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _getText('col-1'),
              _getText('col-2'),
            ],
          ),
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Colors.red, width: 2),
            ),
            child: _getText('row-3'),
          ),
          Expanded(
            child: _getText('Expanded'),
          )
        ],
      ),
    );
  }

  _getText(String txt) {
    return Text(
      txt,
      style: TextStyle(color: Colors.pink, fontSize: 20),
    );
  }
}
