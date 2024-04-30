import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak',
      price: '236',
      description: 'The forward-thinking design of his latest signature',
      imagePath: 'lib/images/shoes1.png',
    ),
    Shoe(
      name: 'AIR jordans',
      price: '220',
      description: 'The forward-thinking design of his latest signature',
      imagePath: 'lib/images/shoes2.png',
    ),
    Shoe(
      name: 'KD treys',
      price: '250',
      description: 'The forward-thinking design of his latest signature',
      imagePath: 'lib/images/shoes3.png',
    ),
    Shoe(
      name: 'Kyrie 6',
      price: '240',
      description: 'The forward-thinking design of his latest signature',
      imagePath: 'lib/images/shoes4.png',
    ),
  ];

  //list of items in user cart
  List<Shoe> usercart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart

  List<Shoe> getUserCart() {
    return usercart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    usercart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    usercart.remove(shoe);
    notifyListeners();
  }
}
