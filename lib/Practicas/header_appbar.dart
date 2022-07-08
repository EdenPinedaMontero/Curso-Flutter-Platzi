import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Practicas/card_image_list.dart';
import 'package:platzi_trips_app/Practicas/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack('Bienvenido'),
        CardImageList(),
      ],
    );
  }
}
