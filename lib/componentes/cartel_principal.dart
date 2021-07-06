import 'package:clon_netflix/componentes/nav_bar_superior.dart';
import 'package:flutter/material.dart';

class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        this.cabecera(),
        this.infoSerie(),
        this.botonera(),
      ],
    );
  }

  Widget cabecera() {
    return Stack(
      children: [
        Image.network(
          'https://i.pinimg.com/originals/13/b2/78/13b278af21ea982f6e410be6ccee79af.jpg',
          //height: 250.0,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 558.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black12, Colors.black])),
        ),
        Container(
          width: double.infinity,
          height: 570.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.topCenter,
                  colors: [Colors.black12, Colors.black87])),
        ),
        SafeArea(child: NavBarSuperior()),
      ],
    );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Telenovelesco',
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text(
          'Suspenso que te cagas',
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text(
          'Suspenso',
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text(
          'Adolescentes',
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        ),
      ],
    );
  }

  Widget botonera() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.check, color: Colors.white),
              SizedBox(
                height: 3.0,
              ),
              Text(
                'Mi lista',
                style: TextStyle(color: Colors.white, fontSize: 10.0),
              ),
            ],
          ),
          FlatButton.icon(
            onPressed: () {},
            color: Colors.white,
            icon: Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            label: Text('Reproducir'),
          ),
          Column(
            children: [
              Icon(Icons.info_outline, color: Colors.white),
              SizedBox(
                height: 3.0,
              ),
              Text(
                'Información',
                style: TextStyle(color: Colors.white, fontSize: 10.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
