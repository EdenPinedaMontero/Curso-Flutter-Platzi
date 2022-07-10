import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:platzi_trips_app/Practicas/header_appbar.dart';
import 'package:platzi_trips_app/Practicas/hola_mundo.dart';
import 'package:platzi_trips_app/Practicas/review_list.dart';
import 'package:platzi_trips_app/Retos/reto_dos.dart';
import 'package:platzi_trips_app/Retos/reto_tres_list_final.dart';

import 'Practicas/description_place.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp(MyApp());
}

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  MyApp({Key? key}) : super(key: key);

  String descriptionDummy =
      "La Ciudad de México es la capital del país, de carácter vibrante, multifacético y siempre en movimiento, es el núcleo, político, económico y cultural de la República Mexicana. La CDMX guarda entre sus calles y largas avenidas los secretos y acontecimientos que han dado forma a la nación.";
  String descriptionDummy2 =
      "En el Paseo de la Reforma podrás admirar el Ángel de la Independencia y recargar energías en alguno de los muchos restaurantes que encontrarás en la Zona Rosa.";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        /*
      //=== App Bar del reto 3 ===//
          appBar: AppBar(
            title: const Text(
              ' Reto Tres',
            ),
            centerTitle: true,
          ),
          */

        body:
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
            Stack(
          children: [
            ListView(
              children: [
                DescriptionPlace(
                    "México", 4, descriptionDummy, descriptionDummy2),
                const ReviewList(),
              ],
            ),
            const HeaderAppBar(),
          ],
        ),
      ),
      //
    );
  }
}
