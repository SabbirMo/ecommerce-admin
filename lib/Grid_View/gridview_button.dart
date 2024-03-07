import 'package:flutter/material.dart';

class GridViewButton extends StatelessWidget {
  final String text;
  final String buttonText;

  const GridViewButton({
    super.key,
    required this.text,
    required this.buttonText
    });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
           Center(
            child: Text( text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white
            ),
            onPressed: () {}, 
            child: Text(
              buttonText,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}