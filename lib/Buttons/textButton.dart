import 'package:flutter/material.dart';

class ViewTextButton extends StatelessWidget {
  const ViewTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Row(
        children: [
          Text("View All", 
          style: TextStyle(
            fontSize: 16,
            color: Colors.black
            ),
          ),
          Icon(Icons.arrow_right_alt, color: Colors.black,)
        ],
      )
    );
  }
}