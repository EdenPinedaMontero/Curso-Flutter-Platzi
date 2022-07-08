import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Review extends StatelessWidget {
  //const Review({Key? key}) : super(key: key);

  String pathImage = "assets/img/people.jpg";
  String name = 'Eden Pineda';
  String details = '1 revisión, 5 fotos';
  String comment = 'Excelente país, me encanto';

  Review(this.pathImage, this.name, this.details, this.comment, {Key? key})
      : super(key: key); // Metodo constructor

  @override
  Widget build(BuildContext context) {
    //=========== crearemos una variable para el nombre del usuario=======//
    final userName = Container(
      // el Container hace que le de un mayor formato a todo lo que coloquemos dentro de si
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left, //alineación del texto
        style: const TextStyle(
          fontSize: 17,
          fontFamily: "Lato",
        ),
      ),
    );
    //=========== variable para la información del usuario=======//
    final userinfo = Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left, //alineación del texto
        style: const TextStyle(
            fontSize: 13, fontFamily: "Lato", color: Color(0xFFa3a5a7)),
      ),
    );
    //=========== crearemos una variable para el comentario del usuario=======//
    final userComment = Container(
      // el Container hace que le de un mayor formato a todo lo que coloquemos dentro de si
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left, //alineación del texto
        style: const TextStyle(
          fontSize: 13,
          fontFamily: "Lato",
          // fontWeight: FontWeight.w900,
        ),
      ),
    );

//===== variable para la info del usuario con una estructura de columna ====/////
    final userDatails = Column(
      crossAxisAlignment: CrossAxisAlignment
          .start, // hace que se la información empice desde la isquierda
      children: [
        // apilación de los container para formar el info
        userName,
        userinfo,
        userComment
      ],
    );
    // ======= Creación de la variable phonto en un container implementando sus margenes ======
    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
      ),
      // ====== definimos el ancho que tendra la foto
      width: 80,
      height: 80,
      // ==== ahora haremos que el contenedor sea redondo con BoxDecoration ========
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
      ),
    );

    //=======
    return Row(
      children: [
        photo,
        userDatails,
      ],
    );
  }
}
