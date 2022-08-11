import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Retos/cuarto%20reto/barra_gradient.dart';
import 'package:platzi_trips_app/Retos/cuarto%20reto/profile_person.dart';

class HeaderBarra extends StatelessWidget {
  const HeaderBarra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BarraGradient("Profile"),
        PersonProfile("assets/img/people.jpg", 'Eden Pineda M.',
            'clufadan_34@hotmail.com')
      ],
    );
  }
}
