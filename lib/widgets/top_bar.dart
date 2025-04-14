import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF162556),
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Image.asset(
            'assets/images/gob_cl_logo.png',
            height: 30,
          ),
          const SizedBox(width: 16),
          const Icon(
            Icons.verified,
            color: Colors.white,
            size: 18,
          ),
          const SizedBox(width: 4),
          const Text(
            'Sitio oficial',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(width: 16),
          GestureDetector(
            onTap: () {
              print('Cómo lo verifico? pressed');
            },
            child: const Text(
              '¿Cómo lo verifico?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
