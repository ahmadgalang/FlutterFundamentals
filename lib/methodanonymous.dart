import 'package:flutter/material.dart';

void main() {
  runApp(const Anonymous());
}

class Anonymous extends StatefulWidget {
  const Anonymous({super.key});

  @override
  State<Anonymous> createState() => _AnonymousState();
}

class _AnonymousState extends State<Anonymous> {
  String message = "awal";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('anonymous method'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      message = "Berubah textnya"; // anonymous method
                    });
                  },
                  child: const Text('tombol'))
            ],
          ),
        ),
      ),
    );
  }
}
