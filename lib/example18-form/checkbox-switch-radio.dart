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
  var _checkbox1 = true;
  var _checkbox2 = true;
  var _checkbox3 = false;
  var _switch1 = false;
  var _switch2 = true;
  var _radioGroup1;
  var _radioGroup2;

  var _enabled = false;

  _onRadioListChange(v) {
    _radioGroup2 = v;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Checkbox(
            value: _checkbox1,
            onChanged: (v) {
              _checkbox1 = v;
              setState(() {});
            },
          ),
          CheckboxListTile(
            value: _checkbox2,
            title: Text('Java'),
            subtitle: Text('基本Java语法/面向对象等'),
            secondary: Icon(Icons.school),
            onChanged: (v) {
              _checkbox2 = v;
              setState(() {});
            },
          ),
          CheckboxListTile(
            value: _checkbox3,
            title: Text('Web'),
            subtitle: Text('HTML/CSS/JavaScript等技术'),
            secondary: Icon(Icons.school),
            onChanged: (v) {
              _checkbox3 = v;
              setState(() {});
            },
          ),
          Divider(),
          Row(
            children: <Widget>[
              Switch(
                value: _switch1,
                onChanged: (v) {
                  _switch1 = v;
                  setState(() {});
                },
              ),
            ],
          ),
          SwitchListTile(
              title: Text('蓝牙'),
              subtitle: Text('连接到附近的蓝牙设备'),
              value: _switch2,
              onChanged: (value) {
                _switch2 = value;
                setState(() {});
              }),
          Divider(),
          Row(
            children: <Widget>[
              Radio<String>(
                value: '英语',
                groupValue: _radioGroup1,
                onChanged: (value) {
                  _radioGroup1 = value;
                  setState(() {});
                },
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: RadioListTile(
                  title: Text('英语'),
                  value: 1,
                  groupValue: _radioGroup2,
                  onChanged: _onRadioListChange,
                ),
              ),
              Expanded(
                child: RadioListTile(
                  title: Text('日语'),
                  value: 2,
                  groupValue: _radioGroup2,
                  onChanged: _onRadioListChange,
                ),
              ),
              Expanded(
                child: RadioListTile(
                  title: Text('法语'),
                  value: 3,
                  groupValue: _radioGroup2,
                  onChanged: _onRadioListChange,
                ),
              ),
            ],
          ),
          CheckboxListTile(
            title: Text('同意条款'),
            onChanged: (v) {
              _enabled = v;
              setState(() {});
            },
            value: _enabled,
          ),
          CheckboxListTile(
            title: Text('可用'),
            onChanged: _enabled ? (v) {} : null,
            value: false,
          ),
        ],
      ),
    );
  }
}
