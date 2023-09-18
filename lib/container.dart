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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Container(
            padding: EdgeInsets.all(10),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 17, 87, 248),
              borderRadius: BorderRadius.circular(50.0),
              border:Border.all(width: 2)
            ),
            child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 232, 229, 229),
                    borderRadius: BorderRadius.circular(50.0),
                    border:Border.all(width: 2,color: Colors.blueGrey))),
          )),
        ],
      ),
    ));
  }
}
