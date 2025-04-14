import 'package:flutter/material.dart';
import '../widgets/top_bar.dart';
import '../widgets/menu_bar.dart'; 

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(),
      body: SingleChildScrollView( // Agregado por si el menú se extiende mucho
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SearchAndMenu(), // Ya combinado y funcional
              SizedBox(height: 20),
              Text('Your main content here'),
            ],
          ),
        ),
      ),
    );
  }
}

