import 'package:flutter/material.dart';

void main() {
  runApp(const MyContainer());
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Latihan container"),
            ),
            body: Container(
              color: Colors.blue,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[const Color.fromARGB(255, 234, 234, 234), Color.fromARGB(255, 246, 0, 0)]), borderRadius: BorderRadius.circular(50))
                          ),
            )));
  }
}
