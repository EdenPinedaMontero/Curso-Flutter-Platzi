import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Practicas/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  HomeTrips({Key? key}) : super(key: key);

  String descriptionDummy =
      "La Ciudad de México es la capital del país, de carácter vibrante, multifacético y siempre en movimiento, es el núcleo, político, económico y cultural de la República Mexicana. La CDMX guarda entre sus calles y largas avenidas los secretos y acontecimientos que han dado forma a la nación.";
  String descriptionDummy2 =
      "En el Paseo de la Reforma podrás admirar el Ángel de la Independencia y recargar energías en alguno de los muchos restaurantes que encontrarás en la Zona Rosa.";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("México", 4, descriptionDummy, descriptionDummy2),
            const ReviewList(),
          ],
        ),
        const HeaderAppBar(),
      ],
    );
  }
}
