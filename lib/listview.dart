import 'package:flutter/material.dart';

void main() {
  runApp(const MyListView());
}

class MyListView extends StatefulWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<Widget> number = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ListView Example')),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        number.add(Text('data ke - $counter'));
                        counter++;
                      });
                    },
                    child: const Text('data')),
                ElevatedButton(
                    // ignore: unrelated_type_equality_checks
                    onPressed: number == 1
                        ? null
                        : () {
                            setState(() {
                              number.removeLast();
                              counter--;
                            });
                          },
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.red)),
                    child: const Text('deleted')),
                    
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: number,
            )
          ],
        ),
      ),
    );
  }
}
