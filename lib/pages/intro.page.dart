// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_ecom_test/pages/home.page.dart';
import 'package:flutter_ecom_test/utils/button.util.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  void onclickShopNow() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 80),
              child: Image.asset(
                'lib/images/nike.png',
                width: 270,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, bottom: 8, top: 8),
                  child: Center(
                    child: Text(
                      'Just Do it',
                      style: TextStyle(
                          color: Color.fromARGB(255, 94, 94, 94),
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, bottom: 8, top: 8),
                  child: Center(
                    child: Text(
                      'Brand new sneakers and custom kicks made with premium quality',
                      style: TextStyle(
                        color: Color.fromARGB(255, 94, 94, 94),
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, bottom: 8, top: 8),
                  child: MyButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            maintainState: false,
                            builder: (context) => HomePage()));
                      },
                      buttonText: 'Shop Here'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
