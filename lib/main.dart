import 'package:flutter/material.dart';

void main() {
  runApp( MyApp() );
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
        body: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Expanded(
                  flex: 4,
                  child: Icon(Icons.backpack),
                ),
                Icon(Icons.leaderboard),
                Icon(Icons.abc),
              ],
            ),
        ),
      );
  }
}