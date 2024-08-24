import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exam/utils/productdata.dart';

class ListingScreen extends StatefulWidget {
  const ListingScreen({super.key});

  @override
  State<ListingScreen> createState() => _ListingScreenState();
}

class _ListingScreenState extends State<ListingScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
              width: width,
              child: Column(
                children: [
                  SizedBox(
                    height: height / 95,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width / 95,
                          ),
                          const Text("SC.",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        width: 350,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('listing');
                              },
                              child: const Text('New Arrivals',
                                  style:
                                  TextStyle(fontWeight: FontWeight.w600)),
                            ),
                            const Text('Men',
                                style:
                                TextStyle(fontWeight: FontWeight.w600)),
                            const Text('Women',
                                style:
                                TextStyle(fontWeight: FontWeight.w600)),
                            const Text('Kids',
                                style:
                                TextStyle(fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(CupertinoIcons.cart),
                            Icon(CupertinoIcons.heart),
                            Icon(CupertinoIcons.person),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height / 20,
            ),
            Stack(
              children: [
                Container(
                  height: 1500,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Container(
                      height: 1500,
                      width: 350,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Brand',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('□   Adidas'),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text('□   Jordan'),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text('□   Fila'),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text('□   Balenciaga'),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text('□   Gucci'),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text('□   Nike'),
                            const SizedBox(
                              height: 20,
                            ),
                            const Divider(
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Price range',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Divider(
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Size',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: List.generate(productsize2.length,
                                      (index) => smallbox(index)),
                            ),
                            Row(
                              children: List.generate(productsize.length,
                                      (index) => smallbox2(index)),
                            ),
                            Row(
                              children: List.generate(productsize3.length,
                                      (index) => smallbox3(index)),
                            ),
                            Row(
                              children: List.generate(productsize4.length,
                                      (index) => smallbox4(index)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 1500,
                          width: 1180,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 100),
                            child: Column(
                              children: [
                                Row(
                                  children: List.generate(
                                      productimage.length,
                                          (index) => InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, 'product',
                                              arguments:
                                              productimage[index]);
                                        },
                                        child: product(index),
                                      )),
                                ),
                                Row(
                                  children: List.generate(
                                      productimage2.length,
                                          (index) => InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, 'product',
                                              arguments:
                                              productimage2[index]);
                                        },
                                        child: product2(index),
                                      )),
                                ),
                                Row(
                                  children: List.generate(
                                      productimage3.length,
                                          (index) => InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, 'product',
                                              arguments:
                                              productimage3[index]);
                                        },
                                        child: product3(index),
                                      )),
                                ),
                                const Row(
                                  children: [
                                    Padding(
                                      padding:
                                      EdgeInsets.only(left: 100, top: 20),
                                      child: Text(
                                          'Don’t missout on once-in-a-while-deals:'),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(top: 30),
                                    //   child: Image.asset('asset/image/image8.png'),
                                    // ),
                                    // const SizedBox(width: 20,),
                                    // Padding(
                                    //   padding:const EdgeInsets.only(top: 30),
                                    //   child: Image.asset('asset/image/image9.png'),
                                    // ),
                                    // const SizedBox(width: 20,),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(top: 30),
                                    //   child: Image.asset('asset/image/image10.png'),
                                    // ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    SizedBox(
                                      width: 90,
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(top: 20, left: 10),
                                      child:
                                      Text('Support line:+250 788 467 808'),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(top: 60, right: 200),
                                      child: Text(
                                          'Copyright  2021 © Sneaker City ltd'),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 60, left: 400),
                  child: Text(
                    'The new arrivals',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget smallbox(index) {
  return Column(
    children: [
      const SizedBox(
        width: 50,
      ),
      Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(
              '${productsize[index]['size']}',
            )),
      ),
    ],
  );
}

Widget smallbox2(index) {
  return Column(
    children: [
      const SizedBox(
        width: 50,
        height: 10,
      ),
      Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text('${productsize2[index]['size']}')),
      ),
    ],
  );
}

Widget smallbox3(index) {
  return Column(
    children: [
      const SizedBox(
        width: 50,
        height: 10,
      ),
      Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text('${productsize3[index]['size']}')),
      ),
    ],
  );
}

Widget smallbox4(index) {
  return Column(
    children: [
      const SizedBox(
        width: 50,
        height: 10,
      ),
      Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text('${productsize4[index]['size']}')),
      ),
    ],
  );
}

Widget product(index) {
  return Row(
    children: [
      const SizedBox(
        width: 50,
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 50, left: 10),
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 250,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 259, left: 10),
                    child: Text(
                      productimage[index]['name'],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      productimage[index]['price'],
                      style: const TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 8),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              width: 250,
              
              decoration: const BoxDecoration(
                color: Color(0xfff5f5f5),
              ),
              child: Image.asset(productimage[index]['image']),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget product2(index) {
  return Row(
    children: [
      const SizedBox(
        width: 50,
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 50, left: 10),
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 250,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 259, left: 10),
                    child: Text(
                      productimage[index]['name'],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      productimage[index]['price'],
                      style: const TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 8),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              width: 250,
              decoration: const BoxDecoration(
                color: Color(0xfff5f5f5),
              ),
              child: Image.asset(productimage2[index]['image']),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget product3(index) {
  return Row(
    children: [
      const SizedBox(
        width: 50,
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 50, left: 10),
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 250,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 259, left: 10),
                    child: Text(
                      productimage[index]['name'],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      productimage[index]['price'],
                      style: const TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 8),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              width: 250,
              decoration: const BoxDecoration(
                color: Color(0xfff5f5f5),
              ),
              child: Image.asset(productimage3[index]['image']),
            ),
          ],
        ),
      ),
    ],
  );
}
