import 'package:flutter/material.dart';

void main() {
  runApp(const MyStackAndAlign());
}

class MyStackAndAlign extends StatelessWidget {
  const MyStackAndAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                    child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: const Color.fromARGB(255, 126, 126, 126),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: const Color.fromARGB(255, 229, 182, 198),
                      ),
                    )
                  ],
                )),
                Flexible(
                    child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.yellowAccent,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: const Color.fromARGB(255, 178, 202, 244),
                      ),
                    )
                  ],
                )),
              ],
            ),
            ListView(
              children: const [
                Column(
                  children: [
                    Text('sedang mencoba mencoba mencoba',
                        style: TextStyle(fontSize: 30)),
                    Text('sedang mencoba mencoba mencoba',
                        style: TextStyle(fontSize: 30)),
                    Text('sedang mencoba mencoba mencoba',
                        style: TextStyle(fontSize: 30)),
                    Text('sedang mencoba mencoba mencoba',
                        style: TextStyle(fontSize: 30)),
                    Text('sedang mencoba mencoba mencoba',
                        style: TextStyle(fontSize: 30)),
                  ],
                )
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(onPressed: () {
                
              }, child: const Icon(Icons.mode_edit_outline_sharp)),
            )
          ],
        ),
      ),
    );
  }
}
