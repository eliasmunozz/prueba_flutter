import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterHomeAh extends StatelessWidget {
  const FooterHomeAh({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Color(0xFF162556),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.asset(
              'assets/images/gob.png',
              height: 50.0,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            'Agencia Nacional',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'de Ciberseguridad',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Gobierno de Chile',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.0),
          Text(
            'CONTACTO',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FaIcon(
                FontAwesomeIcons.phone,
                size: 16.0,
                color: Colors.white,
              ),
              SizedBox(width: 8.0),
              Text(
                '+56447711131',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 4.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FaIcon(
                FontAwesomeIcons.envelope,
                size: 16.0,
                color: Colors.white,
              ),
              SizedBox(width: 8.0),
              Text(
                'ayuda@anci.gob.cl',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 4.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FaIcon(
                FontAwesomeIcons.mapMarkerAlt,
                size: 16.0,
                color: Colors.white,
              ),
              SizedBox(width: 8.0),
              Text(
                'Santiago, Chile',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Text(
            'LEY DEL LOBBY',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'Plataforma Ley del Lobby',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.0),
          Text(
            'LEY DE TRANSPARENCIA',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'Solicitud de Información',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          Text(
            'Transparencia Activa',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.0),
          Text(
            'SECCIONES',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text('Quiénes somos', style: TextStyle(color: Colors.white)),
          Text('Noticias', style: TextStyle(color: Colors.white)),
          Text('Eventos', style: TextStyle(color: Colors.white)),
          Text('Política Nacional de Ciberseguridad', style: TextStyle(color: Colors.white)),
          Text('Normativa', style: TextStyle(color: Colors.white)),
          Text('Comité Interministerial', style: TextStyle(color: Colors.white)),
          Text('Ciberconsejos', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
