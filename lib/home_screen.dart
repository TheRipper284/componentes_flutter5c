import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
        body: ListView(
          children: const [
            Text('I am the negga'),
            Text('I am the negga'),
            Text('I am the negga'),
            Text('I am the negga'),
            Text('I am the negga'),
            Text('I am the negga'),
            Text('I am the negga'),
            Text('I am the negga'),
            Text('I am the negga'),
          ],
        ),
      );
  }
}