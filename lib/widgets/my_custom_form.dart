import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tarea_dos_dos/models/credentials.dart';
import 'package:tarea_dos_dos/utils/utils.dart';
import 'package:tarea_dos_dos/widgets/my_text_field.dart';
import 'package:tarea_dos_dos/widgets/my_title.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final userController = TextEditingController();
  final pwController = TextEditingController();

  @override
  void dispose() {
    userController.dispose();
    pwController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          MyTitle(title: "Cerveceria Almendra"),
          SizedBox(height: 75),
          MyTextField(
            myLabel: Text("Usuario"),
            prefixIcon: Icon(Icons.account_circle),
            controller: userController,
          ),
          SizedBox(height: 15),
          MyTextField(
            controller: pwController,
            myLabel: Text("Contraseña"),
            prefixIcon: Icon(Icons.password),
            suffixIconButton: IconButton(
                onPressed: () => {print("clicked")},
                icon: Icon(Icons.remove_red_eye)),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () => {
                  checkCreds((Credentials(
                      user: userController.text, pw: pwController.text)))
                },
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
    );
  }
}
