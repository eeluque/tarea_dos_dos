import 'package:flutter/material.dart';
import 'package:tarea_dos_dos/screens/home.dart';
import 'package:tarea_dos_dos/screens/signup.dart';
import 'package:tarea_dos_dos/widgets/login_form.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => Login(),
    ),
    GoRoute(
      //name: 'Signup',
      path: '/signup',
      builder: (context, state) => Signup(),
    ),
    GoRoute(
        path: '/home/:emailDisplay',
        builder: (context, state) =>
            Home(emailDisplay: state.pathParameters["emailDisplay"]!)),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.purple[100],
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

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cerveceria Almendra"),
        backgroundColor: Colors.purple,
      ),
      body: Stack(
        children: [
          Center(
            child: Form(
              child: Column(
                children: [
                  LoginForm(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
