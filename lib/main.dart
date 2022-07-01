import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Practicas/hola_mundo.dart';
import 'package:platzi_trips_app/Retos/reto_dos.dart';

import 'Practicas/description_place.dart';

/*void main() {
  runApp(MyApp());
}*/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  MyApp({Key? key}) : super(key: key);

  String descriptionDummy =
      "Id ex ad Lorem in quis minim. Proident proident veniam elit consectetur. Labore amet mollit voluptate non irure culpa. Exercitation minim consectetur ex ex fugiat.";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            ' Practica',
          ),
          centerTitle: true,
        ),
        body: // const RetoDos(),
            // const DescriptionPlace(),
            new DescriptionPlace("México", 4, descriptionDummy),
      ),
      //
    );
  }
}
