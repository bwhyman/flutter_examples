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
        body: Container(
      child: ListView(
        children: <Widget>[
          _buildImage(),
          _buildTitleSection(),
          _buildButtonSection(),
          _buildTextSection()
        ],
      ),
    ));
  }

  _buildImage() {
    return Image.asset(
      'images/lake.jpg',
      fit: BoxFit.contain,
    );
  }

  // 标题区
  _buildTitleSection() {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 8, 5, 8),
      // 将内部控件往内推
      padding: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Oeschinen Lake Campground",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text('Kandersteg, Switzerland')
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
            size: 24,
          ),
          Text('41')
        ],
      ),
    );
  }

  // 按钮区
  _buildButtonSection() {
    return Container(
      padding: EdgeInsets.only(left: 32, right: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(
                Icons.call,
                color: Colors.blue,
              ),
              Container(margin: EdgeInsets.all(8), child: Text('CALL'))
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.near_me,
                color: Colors.blue,
              ),
              Container(margin: EdgeInsets.all(8), child: Text('ROUTE'))
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.share,
                color: Colors.blue,
              ),
              Container(margin: EdgeInsets.all(8), child: Text('SHARE'))
            ],
          )
        ],
      ),
    );
  }

  // 文本区
  _buildTextSection() {
    return Container(
        padding: EdgeInsets.all(32),
        child: Text(
          'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.',
          textAlign: TextAlign.justify,
        ));
  }
}
