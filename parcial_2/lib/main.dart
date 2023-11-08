import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Cooters {
  
  final String image;
  final String name;

  Cooters({
    required this.image,
     required this.name,
  });
}
  class MyApp extends StatelessWidget {
  final List<Cooters> Cooters_list = [

    Cooters(
      image: 'https://www.nicepng.com/png/detail/840-8403859_alarm-clock-svg-png-icon-free-download-alarm.png',
      name: 'CARD 1',
    ),
    Cooters(
      image: 'https://cdn.icon-icons.com/icons2/729/PNG/512/amazon_icon-icons.com_62714.png',
       name: 'CARD 2',
    
    ),
    Cooters(
      image: 'https://th.bing.com/th/id/OIP.XZgCSXTzt-ey7QUVECDbxgHaHa?pid=ImgDet&rs=1',
      name: 'CARD 3',
    ),
     Cooters(
      image: '',
      name: 'CARD 4',
    ),
  ];





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
        body: Column(
          children: [
          
          ],
        ),
      ),
    );
  }
}
