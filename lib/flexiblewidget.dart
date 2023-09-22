import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyAnimatedContainer());
}

class MyAnimatedContainer extends StatelessWidget {
  const MyAnimatedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(children: [
        Flexible(
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.amberAccent,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.white38,
                ),
              )
            ],
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.purple,
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.lightBlue,
          ),
        )
      ])),
    );
  }
}
