import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: {
        MyHomePage.routerName: (context) {
          return MyHomePage();
        },
        MyCart.routerName: (context) => MyCart()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  static const routerName = '/';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('懒猫商城'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, MyCart.routerName);
            },
          )
        ],
      ),
    );
  }
}

class MyCart extends StatelessWidget {
  static const routerName = '/cart';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('购物车'),
      ),
      body: Center(
        child: Text('CART'),
      ),
    );
  }
}
