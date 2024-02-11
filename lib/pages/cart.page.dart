// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_ecom_test/components/cart.tile.dart';
import 'package:flutter_ecom_test/models/cart.model.dart';
import 'package:flutter_ecom_test/models/shoe.model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, index) => Scaffold(
        backgroundColor: Colors.grey[300],
        body: ListView.builder(
          itemCount: value.userCart.length,
          itemBuilder: ((context, index) => CartTile(
                shoe: value.userCart[index],
                removeFromCart: () => removeFromCart(value.userCart[index]),
              )),
        ),
      ),
    );
  }
}
