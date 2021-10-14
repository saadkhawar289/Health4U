import 'package:flutter/material.dart';
import 'package:healthy/Model/Product.dart';

class CartViewModel extends ChangeNotifier {
  List<Product> cartItems = [];
  List<Product> addedCartItems = [];

  void addToCart(Product product) {
    cartItems.add(product);
    addedCartItems = cartItems;
    notifyListeners();
  }
} 