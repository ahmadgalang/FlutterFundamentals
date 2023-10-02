import 'package:flutter/material.dart';

void main() {
  runApp(const MyOpactiyCard());
}

class MyOpactiyCard extends StatelessWidget {
  const MyOpactiyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Opacity card',
          ),
          backgroundColor: const Color.fromARGB(255, 255, 63, 63),
        ),
        body: Stack(
          alignment: FractionalOffset.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xFFFE5788),
                Color.fromARGB(255, 246, 97, 38),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.1,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/images.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/sunset.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 50 + MediaQuery.of(context).size.height * 0.35, 20, 20),
                      child: const Column(
                        children: [
                          Center(
                            child: Text(
                              'Cobaaa',
                              style: TextStyle(color: Color(0xFFF56050), fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
