import 'package:caffe_shop/models/coffe.dart';
import 'package:flutter/material.dart';

class CoffeShop extends ChangeNotifier{
  final List<Coffe> _shop = [
    Coffe(
      name: "cocoa 1",
       price: "23", 
       imagePath: "images/cocoa.png",
       ),
    Coffe(
      name: "coffee 1",
       price: "25", 
       imagePath: "images/coffee-cup.png",
       ),
    Coffe(
      name: "coffee-latte 1",
       price: "26", 
       imagePath: "images/coffee-latte.png",
       ),
    Coffe(
      name: "coffe 1",
       price: "22", 
       imagePath: "images/coffee.png",
       ),
    Coffe(
      name: "latte-art 1",
       price: "29", 
       imagePath: "images/latte-art.png",
       ),

  ];
  List<Coffe> _userCart=[];
  List<Coffe> get coffeshop =>_shop;
  List<Coffe> get usercart =>_userCart;
  void addItemIncart(Coffe coffe){
    _userCart.add(coffe);
    notifyListeners();
  }
  void removeFormatItem(Coffe coffe){
    _userCart.remove(coffe);
    notifyListeners();
  }
}
