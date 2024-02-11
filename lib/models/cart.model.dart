import 'package:flutter/material.dart';
import 'package:flutter_ecom_test/models/shoe.model.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        price: '345.00',
        imageUrl: 'lib/images/shoes1.jpg',
        description: 'Antentokounpo\'s signature shoe'),
    Shoe(
        name: 'Air Jordans',
        price: '290.99',
        imageUrl: 'lib/images/shoes2.jpg',
        description: 'Michael Jordan\'s signature shoe'),
    Shoe(
        name: 'KD 13',
        price: '276.99',
        imageUrl: 'lib/images/shoes3.png',
        description: 'Kevin Durant\'s signature shoe'),
    Shoe(
        name: 'Kyrie 7',
        price: '566.99',
        imageUrl: 'lib/images/shoes4.jpg',
        description: 'Kyrie\'s signature shoe'),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
