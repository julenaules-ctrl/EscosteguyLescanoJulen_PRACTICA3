

import 'package:flutter/material.dart';
import 'package:paisesgui/data/repositories/paises_repository.dart';
import 'package:paisesgui/domain/entities/pais.dart';
import 'package:paisesgui/ui/widgets/my_weather_info.dart';

class InfoPaisDetalle extends StatelessWidget {
  InfoPaisDetalle({
    super.key,
  });

      // Referencia al repositorio, de donde obtendremos la lista de continentes
  final PaisesRepository _repository = PaisesRepository();


  @override
  Widget build(BuildContext context) {
    Pais pais = _repository.infoPais();

    // TO-DO
    // Añadir la información siguiente sobre el país:
    // Población (num. de habitantes), latitud y longitud.
    // Podéis combinar Column y Row para mostrar la información tabulada

    // Antes de la información, deberemos mostrar la información sobre el tiempo en el país,
    // mediante el widtget personalizado MyWeatherInfo(), que se os proporciona ya implementado
    return Scaffold(
      body: SingleChildScrollView (
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.start,// eje horizontal
          children: [
            MyWeatherInfo(),
            Padding(
                padding: EdgeInsets.only(top: 30.0, left: 50.0),
                child: Text(
                  "Población:                  ${pais.poblacion ?? ""}\n" +
                  "Latitud:                       ${pais.latitud ?? ""}\n" +
                  "Longitud:                    ${pais.longitud ?? ""}\n",
                  textAlign: TextAlign.left,
                ),
              )
          ],
        )
      )
    );
  }
}
