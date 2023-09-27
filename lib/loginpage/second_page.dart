import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/loginpage/main_page.dart';

class MySecondPage extends StatelessWidget {
  const MySecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: FilledButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const MyMainPage();
                },
              ),
            );
          },
          child: const Text('Kembali ke "Main Page" '),
        ),
      )),
    );
  }
}
