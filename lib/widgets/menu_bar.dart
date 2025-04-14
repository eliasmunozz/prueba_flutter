import 'package:flutter/material.dart';

class SearchAndMenu extends StatelessWidget {
  const SearchAndMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Logo a la izquierda
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: SizedBox(
            width: 100,
            height:40,
            child: Image.asset(
              'assets/images/logo_barra.png', // Asegúrate de tener este archivo y declararlo en pubspec.yaml
              fit: BoxFit.contain,
            ),
          ),
        ),

        // Cuadro de búsqueda
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Buscar en todo el sitio',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(color: Colors.blue),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            ),
          ),
        ),

        const SizedBox(width: 10.0),

        // Botón de búsqueda
        SizedBox(
          width: 48.0,
          height: 48.0,
          child: ElevatedButton(
            onPressed: () {
              print('Search button pressed');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              elevation: 2.0,
            ),
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ),

        const SizedBox(width: 10.0),

        // Botón de menú
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            print('Menu button pressed');
          },
        ),
      ],
    );
  }
}
