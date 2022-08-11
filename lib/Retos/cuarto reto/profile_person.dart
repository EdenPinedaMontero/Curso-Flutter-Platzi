import 'package:flutter/material.dart';

class PersonProfile extends StatelessWidget {
  String patchImage = "assets/img/people.jpg";
  String nameProfile = 'Eden Pineda M.';
  String imailProfile = 'clufadan_34@hotmail.com';

  PersonProfile(this.patchImage, this.nameProfile, this.imailProfile,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final foto = Container(
      margin: const EdgeInsets.only(top: 10, left: 20),
      width: 70,
      height: 70,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(patchImage), fit: BoxFit.cover),
          shape: BoxShape.circle),
    );

    final name = Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        nameProfile,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 18,
          fontFamily: "Lato",
        ),
      ),
    );

    final imail = Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        imailProfile,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 13,
          color: Color.fromARGB(255, 102, 99, 99),
        ),
      ),
    );

    final contenido = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        name,
        imail,
      ],
    );

    return Row(
      children: [
        foto,
        contenido,
      ],
    );
  }
}
