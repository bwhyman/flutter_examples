import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
  GlobalKey anchorKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: RaisedButton(
        key: anchorKey,
        child: Text('d'),
        onPressed: () {
          RenderBox renderBox = anchorKey.currentContext.findRenderObject();
          final RenderBox overlay = Overlay.of(anchorKey.currentContext).context.findRenderObject();
          final RelativeRect position = RelativeRect.fromRect(
            Rect.fromPoints(
              renderBox.localToGlobal(Offset(0, 0), ancestor: overlay),
              renderBox.localToGlobal(renderBox.size.bottomRight(Offset.zero),
                  ancestor: overlay),
            ),
            Offset.zero & overlay.size,
          );

          showMenu(
            context: context,
            position: position,
            items: <PopupMenuEntry>[
              PopupMenuItem(
                value: 1,
                child: Column(
                  children: <Widget>[
                    Icon(Icons.delete),
                    Text("Delete"),
                  ],
                ),
              )
            ],
          );

        },
      ),
    );
  }

}
