import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tarea_dos_dos/widgets/my_text_field.dart';
import 'package:tarea_dos_dos/widgets/my_title.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginForm();
}

class _LoginForm extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final userController = TextEditingController();
  final pwController = TextEditingController();

  bool hidePW = true;

  @override
  void initState() {
    super.initState();
    hidePW = true;
  }

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
          MyTitle(title: "Iniciar Sesion"),
          SizedBox(height: 75),
          MyTextField(
              hidePW: false,
              myLabel: Text("Usuario"),
              prefixIcon: Icon(Icons.account_circle),
              controller: userController,
              validator: (usuario) {
                if (usuario != "eeluque@unah.hn") {
                  return "Usuario no es valido";
                }
                return null;
              }),
          SizedBox(height: 15),
          MyTextField(
            hidePW: hidePW,
            controller: pwController,
            myLabel: Text("Contraseña"),
            prefixIcon: Icon(Icons.password),
            suffixIconButton: IconButton(
              icon: Icon(hidePW ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(
                  () {
                    hidePW = !hidePW;
                  },
                );
              },
            ),
            validator: (value) {
              if (value != "20162000476") {
                return "Contraseña no es valida";
              }
              return null;
            },
          ),
          SizedBox(height: 25),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final emailDisplay = userController.text;
                    context.go('/home/$emailDisplay');
                  }
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
