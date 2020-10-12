import 'package:shop/models/cart_item.dart';

class OrderItem {
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime dateOfOrder;

  OrderItem({this.id, this.amount, this.products, this.dateOfOrder});
}
