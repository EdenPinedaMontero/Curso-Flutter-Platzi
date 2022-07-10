import 'dart:ui';

import 'package:flutter/material.dart';

class RetoTres extends StatelessWidget {
  //const RetoTres({Key? key}) : super(key: key);

  String imagen = 'assets/retos/reto3/eddy.jpg';
  String nombre = "Eden Pineda M";
  String experiencia = "Experiencia: 1 año";
  final iconomail = const Icon(
    Icons.mail,
    color: Colors.red,
    size: 50,
  );

  RetoTres(this.imagen, this.nombre, this.experiencia, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final foto = Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
      ),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage(imagen), fit: BoxFit.cover)),
    );
    final nombreUser = Container(
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        nombre,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato", fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
    final experienciaUser = Container(
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        experiencia,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 14,
        ),
      ),
    );
    final icono = Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: iconomail,
    );
    final contenido = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        nombreUser,
        experienciaUser,
      ],
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        foto,
        Expanded(child: contenido),
        icono,
      ],
    );
  }
}
