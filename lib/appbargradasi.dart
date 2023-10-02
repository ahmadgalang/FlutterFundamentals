import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppBar());
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.adb, color: Colors.white),
          title: const Text('App Bar Example'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFF10000),
                  Colors.green
                ],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight
                )
              ),
            ),
          ),
        ),
      );
  }
}
