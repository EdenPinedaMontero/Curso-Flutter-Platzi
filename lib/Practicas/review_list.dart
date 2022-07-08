import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Practicas/review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //==== Al agragar el review nos pide los parametros, por lo que hay que llenarlos
        /*Review(pathImage, name, details, comment)*/
        Review("assets/img/people.jpg", 'Eden Pineda', '1 revisión, 3 fotos',
            'Me encanto las costrumbres que tiene. '),
        Review("assets/img/girl.jpg", 'Petunia Cordoba', '2 revisión, 1 fotos',
            'Es espectacular'),
        Review("assets/img/man.jpg", 'Fulanito Perez', '4 revisión, 4 fotos',
            'Es un gran país.'),
      ],
    );
  }
}
