import 'package:flutter/material.dart';

void main() {
  runApp(const MyTextField());
}

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  TextEditingController inputText = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(40),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: const InputDecoration(labelText: 'masukkan huruf'),
                  focusNode: focusNode,
                  onChanged: (value) {
                    setState(() {
                      if (!focusNode.hasFocus) {
                        FocusScope.of(context).requestFocus(focusNode);
                      }
                    });
                  },
                  controller: inputText,
                ),
                Text(inputText.text),
                TextField(
                  decoration: const InputDecoration(labelText: 'masukkan password'),
                  obscureText: true,
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: inputText,
                ),
                const SizedBox(height: 100),
                ElevatedButton(onPressed: () {
                }, child:const Text('Login' ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
