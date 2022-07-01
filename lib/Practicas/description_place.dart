//import 'dart:ui';

import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

// ==== Crear un constructor donde reciba los datos declarados arriba ====/
  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //==== agregar una variable de star que muestre el estado diferente 1======//
    final star_half = Container(
      margin: const EdgeInsets.only(
        top: 323,
        right: 3,
      ),
      //======== asignación del icono star a la mitad y con color exadecimal ==========//
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );
    //==== agregar una variable de star que muestre el estado diferente 2======//
    final star_border = Container(
      margin: const EdgeInsets.only(
        top: 323,
        right: 3,
      ),
      //======== asignación del icono star sin rrellenar color==========//
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );
    //===== Declarando variable star para las estrellas con un container ========//
    final star = Container(
      margin: const EdgeInsets.only(
        top: 323,
        right: 3,
      ),
      //======== asignación del icono star completo y con color exadecimal ==========//
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );
//======= Declarando nueva variable para el titulo de star en un row ========//
    // ignore: non_constant_identifier_names
    final title_stars = Row(
      children: [
        //======== Creando un tamaño de márgen donde empezará la visualización de los items =========//
        Container(
          margin: const EdgeInsets.only(
            // EdgeInsets.only nos agrega un marguen mas especifico
            top: 320,
            left: 20,
            right: 20,
          ),
          child:
              //===== Creando el texto y dar formato ========//
              Text(
            // 'Duwili Ella',
            namePlace,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        //====== Colocando las estrellas desde la variable star en un row ========//
        Row(
          children: [
            star,
            star,
            star,
            star,
            star_half,
          ],
        ),
      ],
    );
    //====== Declarando una nueva variable para la descripción ========//
    final description = Container(
      //=== agregar el tamaño de los márgenes ===//
      margin: const EdgeInsets.only(
        top: 20,
        right: 20,
        left: 20,
      ),
      //=== agregando el párrafo y color ===//
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 110, 110, 94),
        ),
      ),
    );

    //=== nueva variable donde llevará todo el contenido de la app ===//
    // ignore: avoid_unnecessary_containers
    final contenido = Container(
      child: Column(
        children: [title_stars, description, description],
      ),
    );
//=== retornación de la variable contenido ===//
    return contenido;
  }
}
