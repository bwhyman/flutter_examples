import 'package:flutter/material.dart';
import 'package:flutterexamples/example25-cart/models/cartmodel.dart';
import 'package:flutterexamples/example25-cart/models/catalogmodel.dart';
import 'package:flutterexamples/example25-cart/screens/cart.dart';
import 'package:flutterexamples/example25-cart/screens/catalog.dart';
import 'package:provider/provider.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CartModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => CatalogModel(),
        )
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Catalog(),
          "/cart": (context) => Cart(),
        },
      ),
    );
  }
}