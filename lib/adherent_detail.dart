import 'package:flutter/material.dart';

import 'Adherent.dart';

class AdherentDetailPage extends StatelessWidget {
  final Adherent adherent;

  const AdherentDetailPage({Key? key, required this.adherent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails de l\'adhérent'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(adherent.coverUrl),
              radius: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              adherent.nom + ' ' + adherent.prenom,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8),

          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),

          ),
        ],
      ),
    );
  }
}
