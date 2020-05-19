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
  List<bool> _selected = [];
  List<Student> _students = [];

  @override
  void initState() {
    super.initState();
    _students = [
      Student(name: 'BO', number: 2020001, score: 77),
      Student(name: 'SUN', number: 2020005, score: 84)
    ];
    _selected = [false, false];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          DataTable(
            columns: <DataColumn>[
              DataColumn(label: Text('姓名')),
              DataColumn(label: Text('学号')),
              DataColumn(label: Text('总成绩')),
            ],
            rows: <DataRow>[
              DataRow(cells: [
                DataCell(Row(
                  children: <Widget>[
                    Text('BO'),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {},
                    )
                  ],
                )),
                DataCell(Text('20200554')),
                DataCell(Text('66')),
              ]),
              DataRow(cells: [
                DataCell(Row(
                  children: <Widget>[
                    Text('BO'),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {},
                    )
                  ],
                )),
                DataCell(Row(
                  children: <Widget>[
                    Text('20200554'),
                  ],
                )),
                DataCell(Text('77')),
              ]),
            ],
          ),
          Divider(),
          DataTable(columns: <DataColumn>[
            DataColumn(label: Text('姓名')),
            DataColumn(label: Text('学号')),
            DataColumn(label: Text('总成绩'), numeric: true),
          ], rows: _listDataRows())
        ],
      ),
    );
  }

  List<DataRow> _listDataRows() {
    List<DataRow> rows = [];
    for (int i = 0; i < _students.length; i++) {
      rows.add(DataRow(
          selected: _selected[i],
          onSelectChanged: (v) {
            _selected[i] = v;
            setState(() {});
          },
          cells: [
            DataCell(Row(
              children: <Widget>[
                Text(_students[i].name),
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {},
                )
              ],
            )),
            DataCell(Text('${_students[i].number}')),
            DataCell(Text('${_students[i].score}')),
          ]));
    }
    return rows;
  }
}

class Student {
  String name;
  int number;
  double score;

  Student({this.name, this.number, this.score});
}
