import 'package:flutter/material.dart';
import 'models/book.dart';
import 'widgets/book_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final books = [
      const Book(
        title: 'The Art of War',
        author: 'Sun Tzu',
        price: 2500.00,
        imageUrl: 'images/art_of_war.jpg',
        description:
            'An ancient Chinese military treatise that provides timeless strategies and insights into conflict and competition. Essential reading for business leaders and strategists.',
      ),
      const Book(
        title: 'The Count of Monte Cristo',
        author: 'Alexandre Dumas',
        price: 3200.00,
        imageUrl: 'assets/images/monte_cristo.jpg',
        description:
            'A masterful tale of revenge, adventure, and redemption. Following Edmond Dantès\' transformation from a wrongfully imprisoned man to a powerful figure seeking vengeance.',
      ),
      const Book(
        title: 'Atomic Habits',
        author: 'James Clear',
        price: 4500.00,
        imageUrl: 'images/atomic_habits.jpg',
        description:
            'A practical guide to breaking bad habits and building good ones. Learn how tiny changes can yield remarkable results in personal and professional life.',
      ),
      const Book(
        title: 'The Godfather',
        author: 'Mario Puzo',
        price: 2800.00,
        imageUrl: 'images/godfather.jpg',
        description:
            'The epic crime novel following the Corleone family\'s rise in the American mafia. A compelling story of power, family, and honor in the criminal underworld.',
      ),
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Book Store'),
        ),
        body: ListView.builder(
          itemCount: books.length,
          itemBuilder: (context, index) {
            return BookWidget(book: books[index]);
          },
        ),
      ),
    );
  }
}
