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

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  var _dropValue;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            OutlineButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Text('OutlineButton'),
              onPressed: () {},
            ),
            RaisedButton(
              textColor: Colors.red,
              child: Text('RaisedButton'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('FlatButton'),
              color: Colors.green,
              onPressed: () {},
            ),
            DropdownButton(
              hint: Text('请选择课程'),
              icon: Icon(Icons.add_shopping_cart),
              value: _dropValue,
              items: [
                DropdownMenuItem(
                  value: 1,
                  child: Text('Java'),
                ),
                DropdownMenuItem(
                  value: 2,
                  child: Text('Web'),
                ),
                DropdownMenuItem(
                  value: 3,
                  child: Text('Android'),
                )
              ],
              onChanged: (value) {
                _dropValue = value;
                setState(() {});
              },
            ),
            BackButton(),
            CloseButton()
          ],
        ),
      ),
    );
  }
}
