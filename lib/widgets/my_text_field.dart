import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final Text myLabel;
  final Icon? prefixIcon;
  final IconButton? suffixIconButton;
  final TextEditingController? controller;
  final FormFieldValidator? validator;
  const MyTextField(
      {super.key,
      this.prefixIcon,
      required this.myLabel,
      this.suffixIconButton,
      this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          label: myLabel,
          suffixIcon: suffixIconButton,
        ),
      ),
    );
  }
}
