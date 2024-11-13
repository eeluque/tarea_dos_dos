import 'package:flutter/material.dart';
import 'package:tarea_dos_dos/screens/signup.dart';
import 'package:tarea_dos_dos/widgets/my_text_field.dart';
import 'package:tarea_dos_dos/widgets/my_title.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      //name: 'Signup',
      path: '/signup',
      builder: (context, state) => Signup(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
      routerConfig: _router,
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
                  onPressed: () => {context.go('/signup')},
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
