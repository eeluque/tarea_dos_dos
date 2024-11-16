import 'package:flutter/material.dart';
import 'package:tarea_dos_dos/widgets/my_title.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            MyTitle(title: "Bienvenido"),
          ],
        ),
      ),
    );
  }
}
