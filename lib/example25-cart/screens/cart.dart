import 'package:flutter/material.dart';
import '../models/cartmodel.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('购物车'),
      ),
      body: ItemList(),
    );
  }
}

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<CartModel>(
      builder: (c, cart, child) {
        return ListView.separated(
          itemBuilder: (c, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  '${cart.items[index].product.name}',
                  style: TextStyle(fontSize: 30),
                ),
                Text('数量：${cart.items[index].count}')
              ],
            );
          },
          separatorBuilder: (_, __) => Divider(),
          itemCount: cart.items.length,
        );
      },
    );
  }
}
