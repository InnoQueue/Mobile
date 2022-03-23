import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String? placeholder;
  final TextEditingController controller;

  const AppTextField({
    Key? key,
    required this.controller,
    this.placeholder = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
