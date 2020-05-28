import 'package:flutter/material.dart';
import 'package:flutterexamples/example26-network/models/githubmodel.dart';
import 'package:flutterexamples/example26-network/screens/homepage.dart';
import 'package:flutterexamples/example26-network/screens/repositorylist.dart';
import 'package:provider/provider.dart';


main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (c) => GitHubModel(),
        )
      ],
      child: MaterialApp(
        routes: {
          "/": (c) => HomePage(),
          "/repository": (c) => Repos(),
        },
      ),
    );
  }
}

