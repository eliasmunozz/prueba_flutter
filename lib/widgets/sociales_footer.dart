import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class FooterSociales extends StatelessWidget {
  const FooterSociales({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1A237E), // Match the background color
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Divider(
            color: Colors.white12, // Subtle divider
            thickness: 1.0,
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const TextButton(
                onPressed: null, // No URL, so onPressed is null
                child: Text(
                  'Política de Privacidad',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              const Text(
                '|',
                style: TextStyle(color: Colors.white70),
              ),
              const TextButton(
                onPressed: null, // No URL, so onPressed is null
                child: Text(
                  'API Pública Cibers',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              const Text(
                '|',
                style: TextStyle(color: Colors.white70),
              ),
              const TextButton(
                onPressed: null, // No URL, so onPressed is null
                child: Text(
                  'Estado',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.xTwitter, color: Colors.white),
                onPressed: () {
                  // Handle Twitter icon tap (no URL)
                  debugPrint('Twitter icon tapped');
                },
              ),
              const SizedBox(width: 16.0),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.facebookF, color: Colors.white),
                onPressed: () {
                  // Handle Facebook icon tap (no URL)
                  debugPrint('Facebook icon tapped');
                },
              ),
              const SizedBox(width: 16.0),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
                onPressed: () {
                  // Handle Instagram icon tap (no URL)
                  debugPrint('Instagram icon tapped');
                },
              ),
              const SizedBox(width: 16.0),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.linkedinIn, color: Colors.white),
                onPressed: () {
                  // Handle LinkedIn icon tap (no URL)
                  debugPrint('LinkedIn icon tapped');
                },
              ),
              const SizedBox(width: 16.0),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.youtube, color: Colors.white),
                onPressed: () {
                  // Handle YouTube icon tap (no URL)
                  debugPrint('YouTube icon tapped');
                },
              ),
              const SizedBox(width: 16.0),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.vimeoV, color: Colors.white),
                onPressed: () {
                  // Handle Vimeo icon tap (no URL)
                  debugPrint('Vimeo icon tapped');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}