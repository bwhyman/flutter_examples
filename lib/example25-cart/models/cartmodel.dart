import 'package:flutter/material.dart';
import 'catalogmodel.dart';

// 封装商品及购买数量
class Item {
  int count;
  Product product;

  Item(this.count, this.product);
}

class CartModel with ChangeNotifier {
  List<Item> _items = [];

  // 获取购物车中商品列表
  List<Item> get items => _items;
  // 向购物车添加商品，判断购物车中商品是否已存在，更新数量，通知
  // 如果item不存在则抛出异常。因此必须声明orElse属性
  addItem(Product p) {
    Item item = _items.firstWhere((i) => i.product == p, orElse: () => null);
    if (item == null) {
      item = Item(0, p);
      _items.add(item);
    }
    item.count++;
    notifyListeners();
  }
  // 从购物车移除商品，判断数量，通知
  removeItem(Product p) {
    Item item = _items.firstWhere((i) => i.product == p, orElse: () => null);
    if(item == null) {
      return;
    }
    item.count--;
    if(item.count == 0) {
      _items.remove(item);
    }
    notifyListeners();
  }
  // 获取购物车中指定商品数量，不存在返回0
  int getItemCount(Product p) {
    Item item = _items.firstWhere((i) => i.product == p, orElse: () => null);
    return item == null ? 0 : item.count;
  }
  // 计算总总额。取小数点2位转字符串
  String getTotalPrices() {
    double total = 0;
    for (var item in _items) {
      total += item.product.price * item.count;
    }
    return total.toStringAsFixed(2);
  }

}