import 'package:flutter/material.dart';
import 'package:healthy/Model/Product.dart';
import 'package:provider/provider.dart';


class CartViewModel extends ChangeNotifier{


  List<Product>? cartItems;



  void addToCart(Product product){

    cartItems!.add(product);
notifyListeners();
  }


}