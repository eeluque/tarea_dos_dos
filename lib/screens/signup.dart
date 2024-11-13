import 'package:flutter/material.dart';
import 'package:tarea_dos_dos/widgets/my_text_field.dart';
import 'package:tarea_dos_dos/widgets/my_title.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            MyTitle(title: "Registro"),
            MyTextField(myLabel: Text("Nombre")),
            MyTextField(myLabel: Text("Correo")),
            MyTextField(myLabel: Text("Contraseña")),
            MyTextField(myLabel: Text("Confirmar contraseña")),
          ],
        ),
      ),
    );
  }
}
