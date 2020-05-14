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
    final _formKey = GlobalKey<FormState>();
    var _switch2 = true;
    @override
    Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 5),
              child: TextFormField(
                validator: (str) => str.length > 5 ? null : '长度大于5',
                decoration: InputDecoration(
                  labelText: '用户名',
                  prefixIcon: Icon(Icons.phone),
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
            SwitchListTile(
                title: Text('蓝牙'),
                subtitle: Text('不受form reset影响'),
                value: _switch2,
                onChanged: (value) {
                  _switch2 = value;
                  setState(() {});
                }),
            RaisedButton(
              child: Text('submit'),
              onPressed: () {
                var _state = _formKey.currentState;
                _state.validate();
                setState(() {});
              },
            ),
            RaisedButton(
              child: Text('reset'),
              onPressed: () {
                var _state = _formKey.currentState;
                _state.reset();
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }
}
