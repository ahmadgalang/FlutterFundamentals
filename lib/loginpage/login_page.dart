import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/loginpage/main_page.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const MyMainPage();
                },
              ),
            );
          },
          child: const Text('Halaman "Main Page" '),
        ),
      )),
    );
  }
}
