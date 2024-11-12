import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        textTheme: TextTheme(
          displayMedium: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
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
            MyTitle(title: "Cerveceria Almendra"),
            SizedBox(height: 150),
            MyTextField(
              myLabel: Text("Usuario"),
              prefixIcon: Icon(Icons.account_circle),
            ),
            MyTextField(
              myLabel: Text("Contraseña"),
              prefixIcon: Icon(Icons.password),
            ),
          ],
        ),
      ),
    );
  }
}

class MyTitle extends StatelessWidget {
  final String title;
  late TextStyle? style;
  MyTitle({
    super.key,
    required this.title,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    style = Theme.of(context).textTheme.displayMedium!;
    return Center(
      child: Text(
        title,
        style: style,
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  final Text myLabel;
  final Icon? prefixIcon;
  const MyTextField({
    super.key,
    this.prefixIcon,
    required this.myLabel,
  });

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
