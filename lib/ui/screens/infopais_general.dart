
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

    return Container (
      margin: const EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // eje horizontal
        children: [
          Image.network(
            pais.imagen ?? '',
          ),
          Text(
            pais.nombre,
            style: Theme.of(context).textTheme.titleLarge, 
            textAlign: TextAlign.left,
          ),
          Text(
            "Capital: ${pais.capital}",
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.left,
          ),
          Text(
            pais.descripcion ?? "",
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.justify,
          )

        ],
      )
    );
  }
}
