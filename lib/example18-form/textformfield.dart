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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          TextFormField(
            maxLines: 4,
            maxLength: 100,
            keyboardType: TextInputType.number,
          ),
          TextFormField(
            obscureText: true,
            keyboardType: TextInputType.text,
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: '手机号',
                hintText: '请输入手机号',
                helperText: '注册手机号，用于找回密码',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  gapPadding: 10.0,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              keyboardType: TextInputType.phone,
            ),
          )
        ],
      ),
    );
  }
}
