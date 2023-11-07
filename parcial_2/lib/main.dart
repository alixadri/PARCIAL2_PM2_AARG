import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
           backgroundColor:Color.fromARGB(255, 63, 200, 56),
          leading: IconButton(icon: const Icon(Icons.menu),
          onPressed: () {
          },),
          title: Text('ALIX RODRIGUEZ'),
          actions: [
            IconButton(
              icon: const Icon(Icons.circle_notifications_rounded),
              onPressed: () {
              },
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart_checkout_rounded),
              onPressed: () {
              },
            ),
            
          ],
        ),
        
      ),
    );
  }
}