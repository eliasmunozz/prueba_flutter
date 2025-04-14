import 'package:flutter/material.dart';
import '../widgets/top_bar.dart';
import '../widgets/menu_bar.dart'; 
import '../widgets/slider.dart';
import '../widgets/articulo_home.dart'; 

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              const SizedBox(height: 32),
              const Text(
                'Noticias Recientes',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              const SizedBox(height: 32),

              // Noticias una debajo de la otra
              const ImageWithTextWidget(
                imagePath: 'assets/images/noticia1.png',
                text: 'Noticia 1: Lanzamiento del nuevo producto',
                date: '01/10/20',
              ),
              SizedBox(height: 24), // Espacio entre noticias
              const ImageWithTextWidget(
                imagePath: 'assets/images/noticia1.png',
                text: 'Noticia 2: Actualización importante',
                date: '01/10/20',
              ),

              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}



