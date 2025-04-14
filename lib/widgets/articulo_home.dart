import 'package:flutter/material.dart';

class ImageWithTextWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  final String date;

  const ImageWithTextWidget({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.all(0.0),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            child: Image.asset(
              imagePath,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8.0),

          // Contenedor para alinear fecha y título a la izquierda
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  date,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 4.0),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                  maxLines: null, // Permite múltiples líneas si es necesario
                ),
              ],
            ),
          ),
          SizedBox(height: 8.0),
        ],
      ),
    );
  }
}



