import 'package:flutter/material.dart';
import 'package:shop/models/cart_item.dart';
import 'package:shop/models/order_item.dart';

class Orders with ChangeNotifier {
  List<OrderItem> _orders = [];

  List<OrderItem> get orders => [..._orders];

  void addOrder(List<CartItem> cartProducts, double total) {
    _orders.insert(
      0,
      OrderItem(
        id: DateTime.now().toString(),
        amount: total,
        dateOfOrder: DateTime.now(),
        products: cartProducts,
      ),
    );
    notifyListeners();
  }
}
