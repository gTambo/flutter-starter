import 'package:flutter/material.dart';
// import 'dart:math';

// randomColor() {
//   return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
// }

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Flutter is fun!'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              child: const Text('Navigate'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const AboutScreen(),
                  ),
                );
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('Counter page'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const MyApp(),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('about'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go Back!'),
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.pink,
            tooltip: 'Go Heather!',
            enableFeedback: true,
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Flutter is fun!'),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              count++;
            });
          },
        ),
        body: Center(
          child: Text(
            '$count',
            style: const TextStyle(fontSize: 60),
          ),
        ),
      ),
    );
  }
}
