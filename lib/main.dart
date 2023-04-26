import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Flutter is fun!'),
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.amber,
              width: 100,
              height: 100,
            ),
            const Icon(Icons.verified)
          ],
        ),
      ),
    );
  }
}
