
import 'package:flutter/material.dart';
import 'package:paisesgui/data/repositories/paises_repository.dart';
import 'package:paisesgui/domain/entities/pais.dart';

class InfoPaisGeneral extends StatelessWidget {
  InfoPaisGeneral({super.key});

    // Referencia al repositorio, de donde obtendremos la lista de continentes
  final PaisesRepository _repository = PaisesRepository();


  @override
  Widget build(BuildContext context) {

    // Recogemos el país del repositorio
    Pais pais = _repository.infoPais();
    
    // TO-DO
    // Añadir la información siguiente sobre el país:
    // Imagen, nombre, capital y descripción, de forma similar a como se muestra en el enunciado

    // Podéis utilizar los widgets y contenedores que consideréis oportunos (Containers, SingleChildScrollView, Columns, etc)
    // Debéis tener en cuenta no sobrepasar los límites y dibujar fuera del espacio disponible
    // Para comprobar que no os salís, podéis probar a girar el dispositivo (si lo estáis haciendo sobre Android)

    return Scaffold(
        body: SingleChildScrollView(
          child:
        Container (
        margin: const EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0, bottom: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,// eje horizontal
          children: [
            Padding(
              padding: const EdgeInsets.all(.0),
              child: 
                Image.network(
                pais.imagen ?? ''
              ),
            ),
            Row(
              children:  [
                Text(
                  pais.nombre,
                  style: const TextStyle(fontSize: 25),
                  textAlign: TextAlign.left,
                ),
              ]
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 30),
              child: 
              Text(
                "Capital: ${pais.capital ?? ''}",
                style: const TextStyle(fontSize: 15),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child:
                Text(
                  pais.descripcion ?? "",
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.justify,
                ),
            )
          ],
        )
        )
      )
    );
  }
}
