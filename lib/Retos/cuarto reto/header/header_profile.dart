import 'package:flutter/material.dart';
import 'user_info.dart';
import 'buttons_bar.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = Text(
      'Profile',
      style: TextStyle(
          fontFamily: 'Lato',
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0),
    );

    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
      child: Column(
        children: <Widget>[
          Row(
            children: const <Widget>[title],
          ),
          UserInfo('assets/img/people.jpg', 'Eden Pineda',
              'clufadan_34@hotmail.com'),
          const ButtonsBar()
        ],
      ),
    );
  }
}
