import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final Text myLabel;
  final Icon? prefixIcon;
  final IconButton? suffixIconButton;
  const MyTextField(
      {super.key,
      this.prefixIcon,
      required this.myLabel,
      this.suffixIconButton});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            label: myLabel,
            suffixIcon: suffixIconButton),
      ),
    );
  }
}
