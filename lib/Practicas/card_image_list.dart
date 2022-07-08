import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Practicas/card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView(
        padding: const EdgeInsets.all(25),
        scrollDirection: Axis
            .horizontal, //con esto hacemos que la direccion del scroll sea horizontal
        children: [
          CardImage("assets/img/mount.jpg"),
          CardImage("assets/img/piramide.jpg"),
          CardImage("assets/img/angel.jpg"),
          CardImage("assets/img/cascada.jpg"),
          CardImage("assets/img/chica.jpg"),
          CardImage("assets/img/mar.jpg"),
          CardImage("assets/img/palacio.jpg"),
          CardImage("assets/img/pueblo.jpg"),
        ],
      ),
    );
  }
}
