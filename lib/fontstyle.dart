import 'package:flutter/material.dart';

void main() {
  runApp(const FontStyle());
}

class FontStyle extends StatelessWidget {
  const FontStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Style'),
        ),
        body: const Center(
          child: Column(
            children: [
              Text(
                'Latihan font pertamaaavvaaa',
                style: TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.w100),
              ),
              Text('Latihan font kedua')
            ],
          ),
        ),
      ),
    );
  }
}
