import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('À propos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'À propos de l\'application',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Library Manager est une application de gestion de bibliothèque développée dans le cadre d\'un examen en utilisant Flutter. '
                  'Elle permet aux utilisateurs de gérer les livres et les adhérents de la bibliothèque de manière efficace et intuitive.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Version: 1.0.0',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Développé par:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Votre Nom',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              'El Yazid Hakimi',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Professeur:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Abdelmajid BOUSSELHAM',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
