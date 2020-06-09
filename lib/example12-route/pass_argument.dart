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
  Item item = Item('面包', 99);

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
              var r = Navigator.pushNamed(context, MyCart.routerName, arguments: item)
                  .then<int>((total) {
                print(total);
                return total;
              });
            },
          )
        ],
      ),
    );
  }

  _get() async {}
}

class MyCart extends StatelessWidget {
  static const routerName = '/cart';

  @override
  Widget build(BuildContext context) {
    final Item i = ModalRoute.of(context).settings.arguments;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('购物车'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(99);
          },
        ),
      ),
      body: Center(
        child: Text('CART: ${i.title}'),
      ),
    );
  }
  tet(String a, {s, f}) {

  }
}

///
class Item {
  final String title;
  final int price;

  Item(this.title, this.price);
}

class BackItem {
  final int total;

  BackItem(this.total);
}
