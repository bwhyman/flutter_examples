import 'package:flutter/material.dart';
import './models/githubmodel.dart';
import './screens/homepage.dart';
import './screens/repositorylist.dart';
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

