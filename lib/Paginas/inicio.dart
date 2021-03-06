import 'package:clon_netflix/componentes/cartel_principal.dart';
import 'package:clon_netflix/componentes/item_img.dart';
import 'package:clon_netflix/componentes/item_redondeado.dart';
import 'package:clon_netflix/componentes/nav_bar_superior.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            CartelPrincipal(),
            this.listaHorizontal('Avances', ItemRedondeado(), 15),
            SizedBox(
              height: 10.0,
            ),
            this.listaHorizontal(
                'Documentales sobre el espacio', ItemImg(), 10),
            SizedBox(
              height: 10.0,
            ),
            this.listaHorizontal('Tendencias', ItemImg(), 10),
            SizedBox(
              height: 10.0,
            ),
            this.listaHorizontal('Mi lista', ItemImg(), 10),
            SizedBox(
              height: 25.0,
            ),
          ],
        ));
  }

  Widget listaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
          child: Text(
            titulo,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        Container(
          height: 110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cantidad,
            itemBuilder: (context, index) {
              return item;
            },
          ),
        )
      ],
    );
  }
}
