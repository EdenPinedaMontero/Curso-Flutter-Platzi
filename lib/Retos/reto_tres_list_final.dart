import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Retos/reto_tres_list_view.dart';

class RetoTresListFinal extends StatelessWidget {
  const RetoTresListFinal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RetoTres("assets/retos/reto3/eddy.jpg", "Eden Pineda M",
            "Experiencia: 1 año"),
        const Divider(),
        RetoTres("assets/retos/reto3/antonio.jpg", "Antonio Pérez H",
            "Experiencia: 2 años"),
        const Divider(),
        RetoTres("assets/retos/reto3/fulanito.jpg", "Fulanito M",
            "Experiencia: 4 año"),
        const Divider(),
        RetoTres("assets/retos/reto3/perenganito.jpg", "Jhony Cena J",
            "Experiencia: 0 año"),
        const Divider(),
        RetoTres("assets/retos/reto3/petunia.jpg", "Petunia Zapata Z",
            "Experiencia: 0 año"),
        const Divider(),
        RetoTres("assets/retos/reto3/sony.jpg", "Sony Ortuli W",
            "Experiencia: 0 año"),
        const Divider(),
        RetoTres("assets/retos/reto3/jhon.jpg", "Ryan Crovetti H",
            "Experiencia: 0 año"),
      ],
    );
  }
}
