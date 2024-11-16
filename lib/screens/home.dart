import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tarea_dos_dos/widgets/my_title.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            MyTitle(title: "Bienvenido"),
            //Text(userEmail),
            ElevatedButton(
              onPressed: () {
                context.go('/');
              },
              child: Text("Back"),
            )
          ],
        ),
      ),
    );
  }
}
