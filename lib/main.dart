import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: HomeScreen()));

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to Details'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DetailScreen()),
            );
          },
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Screen')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Pop Back to Home'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
