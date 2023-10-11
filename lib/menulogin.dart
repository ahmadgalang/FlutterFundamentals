import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyMenuLogin());
}

class MyMenuLogin extends StatelessWidget {
  const MyMenuLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  double getSmallDiamater(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiamater(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  bool _isObsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 235,
          235), // Ganti dengan warna latar belakang yang Anda inginkan

      body: Stack(
        children: [
          Positioned(
            right: -getSmallDiamater(context) / 3,
            top: -getSmallDiamater(context) / 3,
            child: Container(
              width: getSmallDiamater(context),
              height: getSmallDiamater(context),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Color(0xFF0000FF),
                  Color.fromARGB(255, 130, 130, 243)
                ], begin: Alignment.topLeft, end: Alignment.bottomCenter),
              ),
            ),
          ),
          Positioned(
            left: -getBigDiamater(context) / 4,
            top: -getBigDiamater(context) / 4,
            child: Container(
              width: getBigDiamater(context),
              height: getBigDiamater(context),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Color(0xFF0000FF),
                  Color.fromARGB(255, 130, 130, 243)
                ], begin: Alignment.topLeft, end: Alignment.bottomCenter),
              ),
              child: Center(
                child: Transform.translate(
                  offset: const Offset(10, 20),
                  child: const Text(
                    'Apa Hayo',
                    style: TextStyle(
                        fontFamily: 'Pacifico',
                        color: Colors.white70,
                        fontSize: 24),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: -getBigDiamater(context) / 2,
            bottom: -getBigDiamater(context) / 2,
            child: Container(
              width: getBigDiamater(context),
              height: getBigDiamater(context),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(164, 242, 239, 255)),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ListView(children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: const Color.fromARGB(255, 211, 210, 210))),
                margin: const EdgeInsets.fromLTRB(20, 300, 20, 10),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 25),
                child: Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: Colors.blue,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 191, 191, 191),
                          ),
                        ),
                        labelText: 'Email : ',
                        labelStyle: TextStyle(
                          color: Color(0xFF0000FF),
                        ),
                      ),
                    ),
                    TextField(
                      obscureText: _isObsecureText,
                      decoration: InputDecoration(
                        icon: const Icon(
                          Icons.vpn_key,
                          color: Colors.blue,
                        ),
                        suffixIcon: IconButton(
                            alignment: Alignment.bottomCenter,
                            onPressed: () {
                              setState(() {
                                _isObsecureText = !_isObsecureText;
                              });
                            },
                            icon: Icon(_isObsecureText
                                ? Icons.visibility_off
                                : Icons.visibility)),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 191, 191, 191),
                          ),
                        ),
                        labelText: 'Password : ',
                        labelStyle: const TextStyle(
                          color: Color(0xFF0000FF),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(20, 5, 20, 15),
                  child: InkWell(
                    onTap: () {},
                    child: const Text('forgot password?'),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 40,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                              colors: [
                                Color(0xFF0000FF),
                                Color.fromARGB(255, 130, 130, 243)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            splashColor: Colors.blueAccent,
                            onTap: () {},
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                'SIGN IN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    mini: true,
                    elevation: 0,
                    child: const Image(
                      image: AssetImage('assets/images/fb.jpeg'),
                    ),
                  ),
                  const SizedBox(width: 30.0),
                  FloatingActionButton(
                    onPressed: () {},
                    mini: true,
                    elevation: 0,
                    child: const Image(
                      image: AssetImage('assets/images/google.jpg'),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'DONT HAVE AN ACCOUNT? ',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                    InkWell(
                      onTap: () {
                        if (kDebugMode) {
                          print('text');
                        }
                      },
                      splashColor: const Color(0xFF0000FF),
                      highlightColor: const Color(0xFF000033),
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0000FF)),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
