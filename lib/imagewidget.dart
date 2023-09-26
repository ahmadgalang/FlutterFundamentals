import 'package:flutter/material.dart';

void main() {
  runApp(const MyImageWidget());
}

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
              width: 900,
              height: 300,
              color: Colors.black26,
              child: const Image(
                image: AssetImage(
                  'assets/images/ironman.jpg',
                ),
                fit: BoxFit.cover,
                repeat: ImageRepeat.repeat,
              )),
        ),
      ),
    );
  }
}
