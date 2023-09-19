import 'package:flutter/material.dart';

void main() {
  runApp(const MyStatefull());
}

class MyStatefull extends StatefulWidget {
  const MyStatefull({super.key});

  @override
  State<MyStatefull> createState() => _MyStatefullState();
}

class _MyStatefullState extends State<MyStatefull> {
  int number = 0;

  void add() {
    setState(() {
      number = number + 1;
    });
  }

  void minus() {
    setState(() {
      number = number - 1;
    });
  }

  void reseted() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Statefull Widget Demot'),
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        number.toString(),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          child: Container(
                        margin: const EdgeInsets.only(top: 100),
                      )),
                      ElevatedButton(
                          onPressed: add, child: const Text('Tambah')),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: minus,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent),
                        child: const Text('Kurang'),
                      ),
                      ElevatedButton(
                          onPressed: reseted,
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 98, 92, 92)),
                          child: const Text('Reset')),
                    ],
                  ),
                )
              ],
            ))));
  }
}
