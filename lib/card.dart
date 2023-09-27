import 'package:flutter/material.dart';

void main() {
  runApp(const MyCart());
}

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              Column(
                children: [
                  buildCarddd(Icons.access_alarm, 'halloooo'),
                  buildCarddd(Icons.access_alarm, 'halloooo')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Card buildCarddd(IconData iconDataaa, String text) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              child: Icon(iconDataaa),
            ),
            Text(
              text,
            )
          ],
        ),
      ),
    );
  }
}
