import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardImage extends StatelessWidget {
  //=== Agregamos un paremetro para la imagen ===//
  String pathImage = "assets/img/mount.jpg";
//=== Agregamos el contructor ===//
  CardImage(this.pathImage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      //=== Colocando las dimenciones del contenedor ===//
      height: 350,
      width: 250,
      margin: const EdgeInsets.only(
        top: 80,
        left: 20,
      ),
      //=== Colocamos la decoración de la imagen ===//
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
          //=== Para agregar los bordes circulares ===//
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          shape: BoxShape
              .rectangle, //=== Hacemos que la figura de la imagen sea rectangular ===//
          boxShadow: const <BoxShadow>[
            //=== Hacemos la sombra del rectangulo ===//
            BoxShadow(
              color: Colors.black38,
              blurRadius: 15,
              offset: Offset(0.0, 7.0), // La posición de la sombra
            )
          ]),
    );
    return card;
  }
}
