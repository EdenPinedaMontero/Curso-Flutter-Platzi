import 'package:flutter/material.dart';
import 'header/profile_background.dart';
import 'header/header_profile.dart';
import 'places/places_list.dart';

class ProfileReto extends StatelessWidget {
  const ProfileReto({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const BackgroundProfile(),
        ListView(
          children: <Widget>[const HeaderProfile(), PlacesList()],
        ),
      ],
    );
  }
}
