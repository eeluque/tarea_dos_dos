import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tarea_dos_dos/widgets/my_text_field.dart';
import 'package:tarea_dos_dos/widgets/my_title.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final pwController = TextEditingController();
  final pwConfirmationController = TextEditingController();

  bool hidePW = true;

  @override
  void initState() {
    super.initState();
    hidePW = true;
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    pwController.dispose();
    pwConfirmationController.dispose();
    super.dispose();
  }

  // validateName(String name) {
  //   if (name.length < 3) {
  //     return "Nombre no tiene suficientes caracteres";
  //   }
  //   return null;
  // }

  // validateEmail(String email) {
  //   if (!(email.contains('@') &&
  //       (email.contains("unah.edu.hn") || (email.contains("unah.hn"))))) {
  //     return "El correo ingresado no es valido";
  //   }
  //   return null;
  // }

  // validatePhone(String phone) {
  //   if ((phone[0] != '3' || phone[0] != '9') && (phone.length != 8)) {
  //     return "El numero ingresado no es valido";
  //   }
  //   return null;
  // }

  // validatePassword(String password) {
  //   String pattern =
  //       r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  //   RegExp regExp = RegExp(pattern);
  //   if (!regExp.hasMatch(password)) {
  //     return "La contraseña no cumple los requisitos minimos";
  //   }
  //   return null;
  // }

  // validatePwConfirmation(String password, String passwordConfirmation) {
  //   if (password != passwordConfirmation) {
  //     return "Las contraseñas no son iguales";
  //   }
  //   return null;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cerveceria Almendra"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              MyTitle(title: "Registro"),
              SizedBox(height: 15),
              MyTextField(
                  hidePW: false,
                  myLabel: Text("Nombre"),
                  controller: nameController,
                  validator: (name) {
                    if (name!.length < 3) {
                      return "Nombre no tiene suficientes caracteres";
                    }
                    return null;
                  }),
              SizedBox(height: 15),
              MyTextField(
                  hidePW: false,
                  myLabel: Text("Correo"),
                  controller: emailController,
                  validator: (email) {
                    if (!(email!.contains('@') &&
                        (email.contains("unah.edu.hn") ||
                            (email.contains("unah.hn"))))) {
                      return "El correo ingresado no es valido";
                    }
                    return null;
                  }),
              SizedBox(height: 15),
              MyTextField(
                hidePW: false,
                myLabel: Text("Telefono"),
                controller: phoneController,
                validator: (phone) {
                  if (phone == null || phone.isEmpty) {
                    return "Ingrese un numero";
                  } else {
                    if ((phone[0] != '3' || phone[0] != '9') &&
                        phone.length != 8) {
                      return "Numero ingresado no es valido";
                    }
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              MyTextField(
                hidePW: hidePW,
                myLabel: Text("Contraseña"),
                controller: pwController,
                validator: (password) {
                  final String pattern =
                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                  RegExp regExp = RegExp(pattern);
                  if (password != null && !regExp.hasMatch(password)) {
                    return "La contraseña no cumple los requisitos minimos";
                  }
                  return null;
                },
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
              ),
              SizedBox(height: 15),
              MyTextField(
                hidePW: hidePW,
                myLabel: Text("Confirmar contraseña"),
                controller: pwConfirmationController,
                validator: (pwConfirmation) {
                  if (pwConfirmation != pwController.text) {
                    return "Las contraseñas no son iguales";
                  }
                  return null;
                },
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
              ),
              SizedBox(height: 15),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final emailDisplay = emailController.text;
                      context.go('/home/$emailDisplay');
                    }
                  },
                  child: Text("Registrarse"))
            ],
          ),
        ),
      ),
    );
  }
}
