// add_book_page.dart
import 'package:flutter/material.dart';
import 'book.dart';

class AddBookPage extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController authorController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController coverUrlController = TextEditingController();

  final Function(Book) onAddBook;

  AddBookPage({required this.onAddBook});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajouter un livre'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Titre',
              ),
            ),
            TextField(
              controller: authorController,
              decoration: InputDecoration(
                labelText: 'Auteur',
              ),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                labelText: 'Description',
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
                final newBook = Book(
                  title: titleController.text,
                  author: authorController.text,
                  description: descriptionController.text,
                  coverUrl: coverUrlController.text,
                );
                onAddBook(newBook);
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
