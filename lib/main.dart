import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Text("Cerveceria Almendra",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            ),
            MyTextField(
              myLabel: Text("Usuario"),
              prefixIcon: Icon(Icons.account_circle),
            ),
          ],
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.prefixIcon,
    required this.myLabel,
  });
  final Text myLabel;
  final Icon prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          label: myLabel,
        ),
      ),
    );
  }
}
