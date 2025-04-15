import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/top_bar.dart';
import '../widgets/menu_bar.dart';
import '../widgets/footer_ah.dart';
import '../widgets/sociales_footer.dart';

class ReportarPage extends StatelessWidget {
  const ReportarPage({super.key});

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
                  const SizedBox(height: 20),

                  // Imágenes centradas
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/reporte1.png'), // Reemplaza con tu ruta de imagen
                        const SizedBox(height: 10),
                        Image.asset('assets/images/reporte2.png'), // Reemplaza con tu ruta de imagen
                        const SizedBox(height: 10),
                        Image.asset('assets/images/reporte3.png'), // Reemplaza con tu ruta de imagen
                      ],
                    ),
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
