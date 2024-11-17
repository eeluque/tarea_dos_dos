import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tarea_dos_dos/widgets/my_title.dart';

class Home extends StatelessWidget {
  final String emailDisplay;
  Home({super.key, required this.emailDisplay});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cerveceria Almendra"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          children: [
            MyTitle(title: "Bienvenido"),
            SizedBox(height: 15),
            Text(emailDisplay),
            SizedBox(height: 15),
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
