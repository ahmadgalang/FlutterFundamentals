import 'package:flutter/material.dart';

void main() {
  runApp(const MyColumn());
}

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Belajar Kolom dan row"),
          ),
          body: const Row(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('test 1'),
              Text('text 2'),
              Text('text 3'),
              Column(
                children: <Widget> [
                  Text('test 4'),
                  Text('test 5'),
                  Text('test 6')
                ],
              )
            ],
          ),)
    );
  }
}
