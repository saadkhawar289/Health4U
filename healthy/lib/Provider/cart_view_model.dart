import 'package:flutter/material.dart';
import 'package:healthy/Model/Product.dart';

class CartViewModel extends ChangeNotifier {
  List<Product> cartItems = [];
  List<Product> addedCartItems = [];
   num totalBill=0;

  void addToCart(Product product) {
    cartItems.add(product);
    addedCartItems.add(product);
    notifyListeners();
  }
  void dellHistory() {
    print('entering purchase history');
    addedCartItems.clear();
    notifyListeners();
    print('deleting purchase history');

  }
}