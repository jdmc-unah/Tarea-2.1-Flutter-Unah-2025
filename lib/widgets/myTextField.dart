import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.topText,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
    this.ocultarEntrada = false,
    this.sufixIcon,
    this.sufixIconAction,
  });

  final bool ocultarEntrada;
  final String topText;
  final String hintText;
  final IconData prefixIcon;
  final IconData? sufixIcon;
  final VoidCallback? sufixIconAction;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(topText, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                '*',
                style: TextStyle(color: const Color.fromARGB(255, 228, 21, 6)),
              ),
            ],
          ),
        ),

        TextField(
          controller: controller,
          obscureText: ocultarEntrada,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            hintText: hintText,
            prefixIcon: Icon(prefixIcon),
            suffixIcon: IconButton(
              icon: Icon(sufixIcon),
              onPressed: sufixIconAction,
            ),
          ),
        ),
      ],
    );
  }
}
