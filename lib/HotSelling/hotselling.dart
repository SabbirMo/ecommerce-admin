
import 'package:e_commerce/HotSelling/sellingfootwear.dart';
import 'package:flutter/material.dart';

class HotSelling extends StatelessWidget {
  const HotSelling({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        height: 500,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SellingFootWear(),
          ],
        ),
      ),
    );
  }
}