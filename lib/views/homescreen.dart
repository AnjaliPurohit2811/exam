import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'SC',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                Text(
                  'New Arrivals',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                Text(
                  'Mens',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                Text(
                  'Womens',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                Text(
                  'Kids',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                Icon(Icons.shopping_cart_outlined),
                Icon(Icons.favorite_border),
                Icon(Icons.person_2_outlined)
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey.shade100),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('asset/img/subtract.png'),
              ),
            ),
            Column(
              children: [
                Container(
                  height: 176,
                  width: 403,
                  child: Text(
                    'Puma \n Running SX',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'The shoe that moved mountains for eternity and still does so\n '
                  'with a swift touch of modernism',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                Text(
                  '62,000 RWF',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    'asset/img/Rectangle 4.png',
                    height: 400,
                    width: 400,
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: Row(
                    children: [
                      Image.asset(
                        'asset/img/Rectangle 4.png',
                        height: 80,
                        width: 80,
                      ),
                      Image.asset(
                        'asset/img/1.png',
                        height: 80,
                        width: 80,
                      ),
                      Image.asset(
                        'asset/img/Rectangle 8.png',
                        height: 80,
                        width: 80,
                      ),
                      Image.asset(
                        'asset/img/Rectangle 9.png',
                        height: 80,
                        width: 80,
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text(
                          'All the New Arrivals',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
