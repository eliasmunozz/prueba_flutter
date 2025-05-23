import 'package:flutter/material.dart';
import '../widgets/top_bar.dart';
import '../widgets/menu_bar.dart';
import '../widgets/slider.dart';
import '../widgets/articulo_home.dart';
import '../widgets/boton_home.dart';
import '../widgets/eventos_home.dart';
import '../widgets/footer_ah.dart';
import '../widgets/sociales_footer.dart';
import 'articulo_page.dart';

class PaginaInicio extends StatelessWidget {
  const PaginaInicio({super.key});

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
              const MenuHeader(),
              const SizedBox(height: 20),
              SliderHome(
                imageData: [
                  {
                    'path': 'assets/images/logo_barra.png',
                    'text': 'Destacado 1',
                  },
                  {
                    'path': 'assets/images/logo_barra.png',
                    'text': 'Destacado 2',
                  },
                  {
                    'path': 'assets/images/logo_barra.png',
                    'text': 'Destacado 3',
                  },
                ],
                comment: '',
              ),
              const SizedBox(height: 20),
              const Text(
                'Noticias Recientes',
                style: TextStyle(fontSize: 30.0),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ArticuloPage(),
                    ),
                  );
                },
                child: const ArticuloHome(
                  imagePath: 'assets/images/noticia1.png',
                  text: 'Noticia 1: Lanzamiento del nuevo producto',
                  date: '01/10/25',
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ArticuloPage(),
                    ),
                  );
                },
                child: const ArticuloHome(
                  imagePath: 'assets/images/noticia1.png',
                  text: 'Noticia 2: Actualización importante',
                  date: '01/10/25',
                ),
              ),
              BotonHomeSig(
                buttonText: 'Más Noticias Recientes',
                onPressed: () {
                  print('Botón "Más Noticias Recientes" presionado');
                },
              ),

              const Text('Eventos', style: TextStyle(fontSize: 30.0)),
              const SizedBox(height: 20),
              EventoWidget(
                titulo:
                    'Charla: Consejos para fortalecer tu ciberseguridad personal',
                descripcion: 'Evento Virtual',
                fecha: 'abril-16-2025',
              ),
              const SizedBox(height: 10),
              EventoWidget(
                titulo:
                    'Charla: Consejos para fortalecer tu ciberseguridad personal',
                descripcion: 'Evento Virtual',
                fecha: 'abril-16-2025',
              ),
              const SizedBox(height: 10),

              const Text(
                textAlign: TextAlign.right,
                'Ciberconsejos',
                style: TextStyle(fontSize: 30.0),
              ),
              const SizedBox(height: 10),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ArticuloPage(),
                    ),
                  );
                },
                child: const ArticuloHome(
                  imagePath: 'assets/images/noticia1.png',
                  text: 'Ciberconsejo 1',
                  date: '01/10/20',
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ArticuloPage(),
                    ),
                  );
                },
                child: const ArticuloHome(
                  imagePath: 'assets/images/noticia1.png',
                  text: 'Ciberconsejo 2',
                  date: '01/10/20',
                ),
              ),

              BotonHomeSig(
                buttonText: 'Más ciberconsejos',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ArticuloPage(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 10),
              FooterHomeAh(),
              FooterSociales(),
            ],
          ),
        ),
      ),
    );
  }
}
