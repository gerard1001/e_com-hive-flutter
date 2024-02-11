import 'package:flutter/material.dart';
import 'package:flutter_ecom_test/models/shoe.model.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  final void Function()? onTapAddToCart;
  const ShoeTile({super.key, required this.shoe, required this.onTapAddToCart});

  @override
  Widget build(BuildContext context) {
    // ⚠️⚠️⚠️ I got this big bug here, my app was crashing: I was returning a const Container() instead of a Placeholder() here. The Container was empty while not allowed to be. The Placeholder is a widget that shows a box with a cross in the middle, indicating that the widget is not implemented yet.
    return Container(
      // padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width * 0.8,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        ClipRect(
          child: Image.asset(
            shoe.imageUrl,
            width: 200,
            height: 200,
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              shoe.description,
              style: const TextStyle(fontSize: 16),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(shoe.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20)),
                  Text('\$ ${shoe.price}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 156, 156, 156),
                      )),
                ],
              ),
            ),
            GestureDetector(
              onTap: onTapAddToCart,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: const Icon(Icons.add, color: Colors.white, size: 30),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
