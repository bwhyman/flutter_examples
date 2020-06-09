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
  MyHomePageState createState() {
    return new MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  final ScrollController _controller = ScrollController();
  bool _show = false;
  var _height;

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      // controller每次改变时，均回调执行监听函数
      //不能每次滚动超出均执行更新
      // 只有滚动超出并且没有显式button时通知显式，已经显式button则无需重绘
      if(_controller.offset >= _height && !_show) {
        _show = true;
        setState(() {});
      } else if(_controller.offset < _height && _show){
        _show = false;
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Scrollbar(
        child: ListView.builder(
            itemCount: 30,
            controller: _controller,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("$index"),
              );
            }),
      ),
      floatingActionButton: _show
          ? FloatingActionButton(
          child: Icon(Icons.arrow_upward),
          onPressed: () {
            //返回到顶部时执行动画
            _controller.animateTo(.0,
                duration: Duration(milliseconds: 800), curve: Curves.ease);
          })
          : null,
    );
  }
}
