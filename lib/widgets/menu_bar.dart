import 'package:flutter/material.dart';

class SearchAndMenu extends StatefulWidget {
  const SearchAndMenu({super.key});

  @override
  State<SearchAndMenu> createState() => _SearchAndMenuState();
}

class _SearchAndMenuState extends State<SearchAndMenu> {
  bool _isMenuVisible = false;

  void _toggleMenu() {
    setState(() {
      _isMenuVisible = !_isMenuVisible;
    });
  }

  Widget _buildMenuItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  
  Widget _buildActionButton({
    required String text,
    required Color color,
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5), 
        ),
      ),
      icon: Icon(icon),
      label: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Barra superior con buscador y botón de menú
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: SizedBox(
                  width: 100,
                  height: 40,
                  child: Image.asset(
                    'assets/images/logo_barra.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Buscar en todo el sitio',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(color: Color(0xff193cb8)),
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
              SizedBox(
                width: 48.0,
                height: 48.0,
                child: ElevatedButton(
                  onPressed: () {
                    print('Search button pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF193CB8),
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
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: _toggleMenu,
              ),
            ],
          ),
        ),

        // Menú colapsable
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          child: _isMenuVisible
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300, width: 1), // Borde gris
                      borderRadius: BorderRadius.circular(5.0), // Bordes redondeados
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildMenuItem('Quiénes somos'),
                        _buildMenuItem('Noticias'),
                        _buildMenuItem('Eventos'),
                        _buildMenuItem('Política Nacional de Ciberseguridad'),
                        _buildMenuItem('Normativa'),
                        _buildMenuItem('Comité Interministerial'),
                        _buildMenuItem('Ciberconsejos'),
                        const SizedBox(height: 16),
                        Center(
                          child: Column(
                            children: [
                              _buildActionButton(
                                text: 'Reportar',
                                color: const Color(0xFFFF0050),
                                icon: Icons.report,
                                onPressed: () {
                                  print('Reportar pressed');
                                },
                              ),
                              const SizedBox(height: 10),
                              _buildActionButton(
                                text: 'CSIRT',
                                color: const Color(0xFF1D4ED8),
                                icon: Icons.security,
                                onPressed: () {
                                  print('CSIRT pressed');
                                },
                              ),
                              const SizedBox(height: 8),
                              _buildActionButton(
                                text: 'Ley Marco',
                                color: const Color(0xFF2E284B),
                                icon: Icons.gavel,
                                onPressed: () {
                                  print('Ley Marco pressed');
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : const SizedBox(),
        ),
      ],
    );
  }
}


