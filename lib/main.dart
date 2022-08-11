//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:platzi_trips_app/Practicas/header_appbar.dart';
//import 'package:platzi_trips_app/Practicas/hola_mundo.dart';
import 'package:platzi_trips_app/Practicas/platzi_trips.dart';
import 'package:platzi_trips_app/Practicas/platzi_trips_cupertino.dart';
//import 'package:platzi_trips_app/Practicas/review_list.dart';
//import 'package:platzi_trips_app/Retos/reto_dos.dart';
//import 'package:platzi_trips_app/Retos/reto_tres_list_final.dart';

//import 'Practicas/description_place.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp(const MyApp());
}

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          const PlatziTripsCupertino(), //Sera el punto central de la aplicación
      //Scaffold(
      /*
      //=== App Bar del reto 3 ===//
          appBar: AppBar(
            title: const Text(
              ' Reto Tres',
            ),
            centerTitle: true,
          ),
          */

      //body:
      //List View del reto 3//
      /*
          ListView(
            children: const [RetoTresListFinal()],
          )
          */

      // const RetoDos(),
      // const DescriptionPlace(),
      //new DescriptionPlace("México", 4, descriptionDummy),
      //const ReviewList(),
      //===Stack hace que ponga un elemento en cima de otro===//

      // ),
      //
    );
  }
}
