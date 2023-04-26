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
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            print('pressed!');
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'School',
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.amber,
              width: 100,
              height: 100,
            ),
            const Align(
              alignment: Alignment.center,
              child: Icon(Icons.verified),
            )
          ],
        ),
      ),
    );
  }
}
