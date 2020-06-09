import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MyCount(),
        )
      ],
      child: MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(child: MyContext()),
          ),
          MySlider()
        ],
      ),
    );
  }
}

/// ------------ MySlider
class MySlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final myCount = Provider.of<MyCount>(context);
    return Slider(
      value: myCount.value,
      onChanged: (value) => myCount.value = value,
    );
  }
}

/// ---------- MyContext
class MyContext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<MyCount>(
      builder: (context, myCount, child) {
        return Text(
          '${myCount.value}',
          style: TextStyle(fontSize: 40),
        );
      },
    );
  }
}

/// ----------- MyCount
class MyCount with ChangeNotifier {
  double _value = 0.2;

  get value => _value;

  set value(double newValue) {
    _value = newValue;
    notifyListeners();
  }
}

