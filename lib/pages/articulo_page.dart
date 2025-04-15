import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/top_bar.dart';
import '../widgets/menu_bar.dart'; 
import '../widgets/footer_ah.dart';
import '../widgets/sociales_footer.dart';

class ArticuloPage extends StatelessWidget {
  const ArticuloPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2), 
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopBar(),
            const MenuHeader(),
            const SizedBox(height: 20),

            // Contenedor del artículo
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0), 
              padding: const EdgeInsets.all(16.0),
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
                    'Inicia IV Foro Nacional de Ciberseguridad',
                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16.0),
                  Container(
                    width: double.infinity,
                    height: 200.0,
                    color: Colors.grey[300],
                    child: Center(
                      child: Icon(
                        Icons.image_outlined,
                        size: 60.0,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Con un lleno total del Salón de Honor de la antigua sede del Congreso Nacional en Santiago, el Senado acogió esta mañana el cuarto encuentro del Foro Nacional de Ciberseguridad. La instancia, impulsada por el senador Kenneth Pugh, contó con palabras tanto del propio parlamentario como del director nacional de la Agencia Nacional de Ciberseguridad (ANCI), Daniel Álvarez Valenzuela.',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'El parlamentario contó el trabajo que se realizó durante 2024 en el Foro en sus 5 dominios, que tomó la forma de un documento que será publicado en formato digital para...',
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
