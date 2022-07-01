//import 'dart:ui';

import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  const DescriptionPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //===== Declarando variable star para las estrellas con un container ========//

    final star = Container(
      margin: const EdgeInsets.only(
        top: 323,
        right: 3,
      ),
      //======== asignación del icono star y con color exadecimal ==========//
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
              const Text(
            'Duwili Ella',
            style: TextStyle(
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
            star,
          ],
        ),
      ],
    );
    //====== Declarando una nueva variable para la descripción ========//
    final description = Container(
      //=== agregar el tamaño de los márgenes ===//
      margin: const EdgeInsets.only(
        top: 22,
        right: 22,
        left: 22,
      ),
      //=== agregando el párrafo y color ===//
      child: const Text(
        'Incididunt non labore ad excepteur ad elit adipisicing ullamco velit reprehenderit duis pariatur. Eiusmod veniam consectetur laborum dolore in. Proident consectetur id mollit laborum aliqua non anim. Excepteur amet proident laborum deserunt non eiusmod officia culpa amet dolore labore. In incididunt pariatur nisi id ut id. Ut sit do ullamco qui proident nisi minim officia.',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 146, 145, 124),
        ),
      ),
    );

    //=== nueva variable donde llevará todo el contenido de la app ===//
    // ignore: avoid_unnecessary_containers
    final contenido = Container(
      child: Column(
        children: [title_stars, description],
      ),
    );
//=== retornación de la variable contenido ===//
    return contenido;
  }
}
