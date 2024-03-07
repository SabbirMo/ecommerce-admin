import 'package:flutter/material.dart';

class SellingFootWear extends StatefulWidget {
  const SellingFootWear({super.key});

  @override
  State<SellingFootWear> createState() => _SellingFootWearState();
}

class _SellingFootWearState extends State<SellingFootWear> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        child: Column(
          children: [
            Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.red
            ),
            )
          ],
        ),
      ),
    );
  }
}