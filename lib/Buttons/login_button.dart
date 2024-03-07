import 'package:flutter/material.dart';


class LoginButton extends StatelessWidget {
  final String text;
  final IconData icon;

  const LoginButton({
    super.key,
    required this.text,
    required this.icon,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
          height: 60,
          child: TextButton.icon(
            style: TextButton.styleFrom(
              side: BorderSide(),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            onPressed: () {}, 
            icon: Icon(icon,
            size: 28,
            ), 
            label: Center(
              child: Text(text,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.normal
                ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}