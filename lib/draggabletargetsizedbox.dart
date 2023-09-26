import 'package:flutter/material.dart';

void main() {
  runApp(const MyDraggable());
}

class MyDraggable extends StatefulWidget {
  const MyDraggable({super.key});

  @override
  State<MyDraggable> createState() => _MyDraggableState();
}

class _MyDraggableState extends State<MyDraggable> {
  final Color _color1 = const Color.fromRGBO(49, 176, 218, 0.965);
  final Color _color2 = const Color.fromRGBO(76, 37, 216, 0.925);
  late Color targetColor;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Draggable<Color>(
                      data: _color1,
                      childWhenDragging: SizedBox(
                        height: 50,
                        width: 50,
                        child: Material(
                          color: _color1,
                          shape: const StadiumBorder(),
                          elevation: 3,
                        ),
                      ),
                      feedback: const SizedBox(
                        height: 50,
                        width: 50,
                        child: Material(
                            color: Color.fromARGB(139, 217, 235, 50),
                            shape: StadiumBorder(),
                            elevation: 3),
                      ),
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Material(
                          color: _color1,
                          shape: const StadiumBorder(),
                          elevation: 3,
                        ),
                      ),
                    ),
                    Draggable<Color>(
                        data: _color2,
                        childWhenDragging: SizedBox(
                          height: 50,
                          width: 50,
                          child: Material(
                            color: _color2,
                            shape: const StadiumBorder(),
                            elevation: 3,
                          ),
                        ),
                        feedback: const SizedBox(
                          height: 50,
                          width: 50,
                          child: Material(
                              color: Color.fromARGB(139, 217, 235, 50),
                              shape: StadiumBorder(),
                              elevation: 3),
                        ),
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: Material(
                            color: _color2,
                            shape: const StadiumBorder(),
                            elevation: 3,
                          ),
                        ))
                  ]),
            ),
            const SizedBox(height: 100.0),
            DragTarget<Color>(
                onWillAccept: (value) => true,
                onAccept: (value) {
                  isAccepted = true;
                  targetColor = value;
                },
                builder: (context, candidateData, rejectedData) {
                  return (isAccepted)
                      ? SizedBox(
                          height: 150,
                          width: 150,
                          child: Material(
                            color: targetColor,
                            shape: const StadiumBorder(),
                            elevation: 3,
                          ),
                        )
                      : const SizedBox(
                          height: 150,
                          width: 150,
                          child: Material(
                            color: Colors.black45, // Ganti dengan _color2
                            shape: StadiumBorder(),
                            elevation: 3,
                          ),
                        );
                }),
          ],
        ),
      ),
    );
  }
}
