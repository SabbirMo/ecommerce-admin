import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback press;

  const Button({
    super.key,
    required this.text,
    required this.press
    });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
                height: 60,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor:const Color.fromARGB(236, 4, 67, 215),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                  onPressed: press,
                  child: Center(
                    child: Text(text,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.white
                    ),
                    ),
                  ),
                ),
              ),
    );
  }
}