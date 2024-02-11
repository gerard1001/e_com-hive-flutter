import 'package:flutter/material.dart';
import 'package:flutter_ecom_test/models/shoe.model.dart';

class CartTile extends StatelessWidget {
  final void Function()? removeFromCart;
  final Shoe shoe;
  const CartTile({super.key, required this.shoe, required this.removeFromCart});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListTile(
        leading: Image.asset(
          shoe.imageUrl,
          width: 80,
          height: 80,
        ),
        title: Text(shoe.name),
        subtitle: Text('\$ ${shoe.price}'),
        trailing: IconButton(
          onPressed: removeFromCart,
          icon: const Icon(Icons.delete),
        ),
      ),
    );
  }
}
