

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
  final List<Cooters> CootersList = [
  Cooters(
      image:
          'https://www.nicepng.com/png/detail/840-8403859_alarm-clock-svg-png-icon-free-download-alarm.png',
      name: 'CARD 1',
    ),
    Cooters(
      image:
          'https://cdn.icon-icons.com/icons2/729/PNG/512/amazon_icon-icons.com_62714.png',
      name: 'CARD 2',
    ),
    Cooters(
      image:
          'https://th.bing.com/th/id/OIP.XZgCSXTzt-ey7QUVECDbxgHaHa?pid=ImgDet&rs=1',
      name: 'CARD 3',
    ),
    Cooters(
      image:
          'https://clipground.com/images/android-logo-3d-png-5.png', // Reemplace esto con una URL de imagen válida
      name: 'CARD 4',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 63, 200, 56),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          title: Text('ALIX RODRIGUEZ'),
          actions: [
            IconButton(
              icon: const Icon(Icons.circle_notifications_rounded),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart_checkout_rounded),
              onPressed: () {},
            ),
          ],
        ),
       
        body: ListView.builder(
          itemCount: CootersList.length,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [
                  Image.network(CootersList[index].image),
                  Text('${CootersList[index].name}'),
                  ElevatedButton(
                    onPressed: () {
                      showPokemonInfo(context, CootersList[index]);
                    },
                    child: Text('CARDS'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  
  void showUserInfo(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text('........'),
          actions: [
            CupertinoDialogAction(
              child: Text('Cerrar'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}


  void showPokemonInfo(BuildContext context, Cooters cooters) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(

              leading: IconButton(
                icon: const Icon(Icons.menu_outlined),
                onPressed: () {},
              ),
              title: Text(cooters.name),
              backgroundColor:Color.fromARGB(255, 63, 200, 56),
              actions: [
              ],
            ),
            body: Column(
              children: [
                Image.network(cooters.image),
                ElevatedButton(
                  onPressed: () {
                    showUserInfo(context);
                  },
                  child: Text('POPUP'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

class UserInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showUserInfo(context);
      },
      child: Text('+'),
    );
  }
}
 void showUserInfo(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
         title: Text('POPUP ...................'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Text('flamma speciem permisit nunc longo altee bracchia stagna diverso deorum'),
              )
            ],
          ), 
          actions: [
            CupertinoDialogAction(
              child: Text('Cerrar'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }



