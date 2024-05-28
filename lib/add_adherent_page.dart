import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Adherent.dart';

class AddAdherentPage extends StatelessWidget {
  final TextEditingController nomController = TextEditingController();
  final TextEditingController prenomController = TextEditingController();
  final TextEditingController coverUrlController = TextEditingController();

  final void Function(Adherent) onAddAdherent; // Explicitly declare the type

  AddAdherentPage({required this.onAddAdherent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajouter un adhérent'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: nomController,
              decoration: InputDecoration(
                labelText: 'Nom',
              ),
            ),
            TextField(
              controller: prenomController,
              decoration: InputDecoration(
                labelText: 'Prénom',
              ),
            ),
            TextField(
              controller: coverUrlController,
              decoration: InputDecoration(
                labelText: 'URL de l\'image de couverture',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final newAdherent = Adherent(
                  nom: nomController.text,
                  prenom: prenomController.text,
                  coverUrl: coverUrlController.text,
                  email: 'hello@gmail.com',
                );
                onAddAdherent(newAdherent);
                Navigator.pop(context);
              },
              child: Text('Ajouter'),
            ),
          ],
        ),
      ),
    );
  }
}
