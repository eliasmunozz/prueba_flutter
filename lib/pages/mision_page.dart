import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/top_bar.dart';
import '../widgets/menu_bar.dart'; 
import '../widgets/footer_ah.dart';
import '../widgets/sociales_footer.dart';

class MisionPage extends StatelessWidget {
  const MisionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2), // Fondo gris claro
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopBar(),
            const MenuHeader(),
            const SizedBox(height: 20),

            // Contenedor del artículo
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0), // Espaciado externo
              padding: const EdgeInsets.all(16.0), // Espaciado interno
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Botones de compartir
                  Row(
                    children: <Widget>[
                      Text(
                        'Compartir: ',
                        style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.facebook),
                        onPressed: () {},
                        iconSize: 15.0,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.linkedin),
                        onPressed: () {},
                        iconSize: 15.0,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.twitter),
                        onPressed: () {},
                        iconSize: 15.0,
                        padding: EdgeInsets.zero
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.xTwitter),
                        onPressed: () {},
                        iconSize: 15.0,
                        padding: EdgeInsets.zero
                        
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.telegram),
                        onPressed: () {},
                        iconSize: 15.0,
                        padding: EdgeInsets.zero,
                      ),
                    ],
                  ),

                  const SizedBox(height: 16.0),
                  Text(
                    '14 de abril de 2025 a las 16:41',
                    style: TextStyle(fontSize: 12.0, color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'Misión y objetivos',
                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16.0),
                  
                  const Text(
                    'La Agencia fue creada en la Ley N°21.663, Marco de Ciberseguridad e implementada en el DFL N°1-21663.',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(height: 16.0),
                  
                  const Text(
                    'La ANCI tiene por objeto asesorar al Presidente de la República en materias propias de ciberseguridad, colaborar en la protección de intereses nacionales en el ciberespacio, coordinar el actuar de las instituciones con competencia en materia de ciberseguridad, velar por la protección, promoción y respeto del derecho a la seguridad informática, y coordinar y supervisar la acción de los organismos de la Administración del Estado en materia de ciberseguridad.',
                    style: TextStyle(fontSize: 16.0),
                  ),

                ],
              ),
            ),

            const SizedBox(height: 10),
            const FooterHomeAh(),
            const FooterSociales(),
          ],
        ),
      ),
    );
  }
}