import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyAnimatedContainer());
}

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({super.key});

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  double _width = 50;
  double _height = 50;
  Color _colors = Colors.black45;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animated Containeri'),
        ),
        body: Center(
          child: AnimatedContainer(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _colors,
              borderRadius: _borderRadius,
            ),
            duration: const Duration(seconds: 1),
            curve: Curves.fastLinearToSlowEaseIn,
          ),
        ),
        floatingActionButton: FloatingActionButton(tooltip: 'klik',
          onPressed: () {
            setState(() {
              final random = Random();

              _width = random.nextInt(200).toDouble();
              _height = random.nextInt(200).toDouble();
              _colors = Color.fromRGBO(random.nextInt(200),random.nextInt(200),random.nextInt(200),1);
              _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
              
            });
          },child: const Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}
