import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  // 可以保存状态
  _change(int index) {
    _currentIndex = index;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation'),
      ),
      // 默认，当底部按钮超过3个，无默认颜色，需手动设置
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.orange,
        onTap: _change,
        currentIndex: _currentIndex,
        items: _listItems(),
      ),
      //body: _children[_currentIndex],
      body: IndexedStack(
        index: _currentIndex,
        children: _listChildren(),
      ),
    );
  }

  List<BottomNavigationBarItem> _listItems() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text('Home'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.book),
        title: Text('Book'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.music_video),
        title: Text('Music'),
        //backgroundColor: Colors.orange
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.movie),
        title: Text('Movie'),
      ),
    ];
  }

  List<Widget> _listChildren() {
    return [
      MyContainer('HOME'),
      MyContainer('BOOK'),
      MyContainer('MUSIC'),
      MyContainer('MOVE')
    ];
  }


}

class MyContainer extends StatelessWidget {
  final String title;

  MyContainer(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      title,
      style: TextStyle(fontSize: 40, color: Colors.pink),
    );
  }
}
