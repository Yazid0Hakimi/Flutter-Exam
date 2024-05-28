// book_detail_page.dart
import 'package:flutter/material.dart';
import 'book.dart';

class BookDetailPage extends StatelessWidget {
  final Book book;

  const BookDetailPage({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails du livre'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            book.coverUrl,
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Auteur: ${book.author}',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Desc:  ${book.description}',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
