import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Practicas/home_trips.dart';
import 'package:platzi_trips_app/Practicas/profile_trips.dart';
import 'package:platzi_trips_app/Practicas/search_trips.dart';

class PlatziTrips extends StatefulWidget {
  const PlatziTrips({Key? key}) : super(key: key);

  @override
  State<PlatziTrips> createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {
  //Creamos un indece al cual siempre accederá
  int indexTap = 0;
  //=== Practicamente aquí cambia de color al momomento de que el usuario le da click en cualquier icono ===//
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    const SearchTrips(),
    const ProfileTrips()
  ];

  void onTapTapped(int index) {
    setState(() {
      //hace llamar toda la funcionalidad del StafulWidget
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Parte de la navegación//

    return Scaffold(
        body: widgetsChildren[indexTap],
        bottomNavigationBar: //creación de la barra de navegación
            Theme(
                data: Theme.of(context).copyWith(
                  //Damos la personalización de la barra de navegación
                  canvasColor: Colors.white,
                  colorScheme: const ColorScheme.light().copyWith(
                    primary: Colors.red,
                  ), // Será el color que tendrán los iconos
                  //  primaryColor: //Colors.purple,
                ),
                child: BottomNavigationBar(
                  onTap: onTapTapped, // controla el estado
                  currentIndex:
                      indexTap, //indicamos que dede aquí sea el indice
                  //=== Con esto hacemos que el texto sea tipo transparente ===//
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  items: const [
                    BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.search), label: ""),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person), label: ""),
                  ],
                )));
  }
}
