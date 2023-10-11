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
                      opacity: 0.2,
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
                      margin: EdgeInsets.fromLTRB(
                          20,
                          50 + MediaQuery.of(context).size.height * 0.35,
                          20,
                          20),
                      child: const Column(
                        children: [
                          Center(
                            child: Text(
                              'Beautiful sunset at paddy field',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xFFF56050), fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  'Post On',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  ' September 2023',
                                  style: TextStyle(
                                      color: Color(0xFFF56050), fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Spacer(flex: 10,),
                                Icon(Icons.thumb_up),
                                Spacer(flex: 1,),
                                Text('99'),
                                Spacer(flex: 5),
                                Icon(Icons.comment),
                                Spacer(flex: 1,),
                                Text('99'),
                                Spacer(flex: 10,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
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
