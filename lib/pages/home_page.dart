import 'package:flutter/material.dart';
import '../widgets/top_bar.dart';
import '../widgets/menu_bar.dart'; 
import '../widgets/slider.dart';
import '../widgets/articulo_home.dart'; 
import '../widgets/boton_home.dart'; 
import '../widgets/eventos_home.dart';
import '../widgets/footer_ah.dart';
import '../widgets/sociales_footer.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(),
              const SearchAndMenu(),
              const SizedBox(height: 20),
              LocalImageSliderWithComment(
                imageData: [
                  {
                    'path': 'assets/images/logo_barra.png',
                    'text': 'Primera imagen destacada',
                  },
                  {
                    'path': 'assets/images/logo_barra.png',
                    'text': '¡Nueva colección disponible!',
                  },
                  {
                    'path': 'assets/images/logo_barra.png',
                    'text': 'Ofertas por tiempo limitado',
                  },
                ],
                comment: 'Hay que quitar este comentario xd',
              ),
              const SizedBox(height: 20),
              const Text(
                'Noticias Recientes',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              const SizedBox(height: 20),

              // Noticias una debajo de la otra
              const ImageWithTextWidget(
                imagePath: 'assets/images/noticia1.png',
                text: 'Noticia 1: Lanzamiento del nuevo producto',
                date: '01/10/20',
              ),
              SizedBox(height: 10), // Espacio entre noticias
              const ImageWithTextWidget(
                imagePath: 'assets/images/noticia1.png',
                text: 'Noticia 2: Actualización importante',
                date: '01/10/20',
              ),
              TextButtonRightAligned(
                  buttonText: 'Más Noticias Recientes',
                  onPressed: () {
                    // Acción a realizar cuando se presiona el botón
                    print('Botón "${'Más Noticias Recientes'}" presionado');
                  },
              ),
              const Text(
                'Eventos',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              const SizedBox(height: 20),  
              EventoWidget(
                titulo: 'Charla: Consejos para fortalecer tu ciberseguridad personal',
                descripcion: 'Evento Virtual',
                fecha: 'abril-16-2025',
              ),
              SizedBox(height: 10),
              EventoWidget(
                titulo: 'Charla: Consejos para fortalecer tu ciberseguridad personal',
                descripcion: 'Evento Virtual',
                fecha: 'abril-16-2025',
              ),
              SizedBox(height: 10),
              const Text(
                textAlign: TextAlign.right,
                'Ciberconsejos',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              SizedBox(height: 10),
              const ImageWithTextWidget(
                imagePath: 'assets/images/noticia1.png',
                text: 'Ciberconsejo 1',
                date: '01/10/20',
              ),
              SizedBox(height: 10),
              const ImageWithTextWidget(
                imagePath: 'assets/images/noticia1.png',
                text: 'Ciberconsejo 2',
                date: '01/10/20',
              ),
              TextButtonRightAligned(
                  buttonText: 'Más ciberconsejos',
                  onPressed: () {
                    // Acción a realizar cuando se presiona el botón
                    print('Botón "${'Más Noticias Recientes'}" presionado');
                  },
              ),
              SizedBox(height: 10),
              FooterHomeAh(),
              FooterSociales(),
            ],
          ),
        ),
      ),
    );
  }
}



