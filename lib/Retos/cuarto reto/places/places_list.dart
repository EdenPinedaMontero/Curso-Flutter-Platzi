import 'package:flutter/material.dart';
import '../../../models/place.dart';
import 'place.dart';

class PlacesList extends StatelessWidget {
  InfoPlace info = InfoPlace(
      'Knuckles Mountains Range',
      'Hiking. Water fall hunting. Natural bath',
      'Scenery & Photography',
      '123,123,123');
  InfoPlace info2 = InfoPlace(
      'Mountains',
      'Hiking. Water fall hunting. Natural bath',
      'Scenery & Photography',
      '321,321,321');

  PlacesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          Place('assets/img/mount1.jpg', info),
          Place('assets/img/mount2.jpg', info2),
        ],
      ),
    );
  }
}
