import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final bool passwordInvisible;
  final IconData? customIcon;


  const EmailTextField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.controller,
    this.passwordInvisible = false,
    this.customIcon
    });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: hintText,
                  prefixIcon: Icon(icon),
                  suffixIcon: Icon(customIcon)
                ),
                obscureText: passwordInvisible,
              ),
            ],
          ),
        ),
      ),
    );
  }
}