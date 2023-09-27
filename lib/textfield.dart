import 'package:flutter/material.dart';

void main() {
  runApp(MyTextField());
}

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  TextEditingController InputText = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.all(40),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'masukkan huruf'),
                  focusNode: focusNode,
                  onChanged: (value) {
                    setState(() {
                      if (!focusNode.hasFocus) {
                        FocusScope.of(context).requestFocus(focusNode);
                      }
                    });
                  },
                  controller: InputText,
                ),
                Text(InputText.text),
                TextField(
                  decoration: InputDecoration(labelText: 'masukkan password'),
                  obscureText: true,
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: InputText,
                ),
                SizedBox(height: 100),
                ElevatedButton(onPressed: () {
                }, child:Text('Login' ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
