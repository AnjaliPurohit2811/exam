import 'package:exam/views/listing.dart';
import 'package:exam/views/homescreen.dart';
import 'package:flutter/material.dart';




void main()
{
  runApp(exam());
}

class exam extends StatelessWidget {
  const exam ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: 'Exam',
      initialRoute: '/product',
      routes: {
        '/' :(context) => HomeScreen(),
       // '/cart' :(context) => CartScreen(),
        '/product' :(context) => ListingScreen(),


      },
    );
  }
}
