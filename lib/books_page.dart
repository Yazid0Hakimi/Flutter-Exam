// books_page.dart
import 'package:flutter/material.dart';
import 'addBooks_page.dart';
import 'book.dart';
import 'books_detail.dart';

class BooksPage extends StatefulWidget {
  @override
  _BooksPageState createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  final List<Book> books = [
    Book(
      title: 'Gone Girl',
      author: 'Gillian Flynn',
      coverUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1554086139i/19288043.jpg',
      description: 'is a psychological thriller novel written by Gillian Flynn. The story revolves around the mysterious disappearance of Amy Elliott Dunne on the morning of her fifth wedding anniversary.',
    ),
    Book(
      title: 'The Glass Castle',
      author: ' Jeannette Walls ',
      coverUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1523542886i/7445.jpg',
      description: 'a memoir by Jeannette Walls that recounts her unconventional and often turbulent upbringing. Walls chronicles her childhood spent with her siblings and unconventional parents, Rex and Rose Mary Walls, who were nomadic and frequently moved around the United States to escape debt and authorities.',
    ),
    // Add more books as needed
  ];

  void _addBook(Book book) {
    setState(() {
      books.add(book);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Livres'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return ListTile(
            title: Text(book.title),
            subtitle: Text(book.author),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(book.coverUrl),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookDetailPage(book: book)),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddBookPage(onAddBook: _addBook)),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
