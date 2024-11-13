import 'package:flutter/material.dart';
import 'package:tarea_dos_dos/widgets/MyTextField.dart';
import 'package:tarea_dos_dos/widgets/MyTitle.dart';

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
        inputDecorationTheme: InputDecorationTheme(
          constraints: BoxConstraints(maxWidth: 350),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
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
            SizedBox(height: 75),
            MyTextField(
              myLabel: Text("Usuario"),
              prefixIcon: Icon(Icons.account_circle),
            ),
            SizedBox(height: 15),
            MyTextField(
                myLabel: Text("Contraseña"),
                prefixIcon: Icon(Icons.password),
                suffixIconButton: IconButton(
                    onPressed: () => {print("clicked")},
                    icon: Icon(Icons.remove_red_eye))),
            SizedBox(height: 25),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () => {print("clicked")},
                  child: Text("Login"),
                ),
                TextButton(
                  onPressed: () => {print("clicked")},
                  child: Text("Registrarse"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
