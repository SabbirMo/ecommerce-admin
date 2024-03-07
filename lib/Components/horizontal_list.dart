
import 'package:flutter/material.dart';
import 'package:e_commerce/Components/catagories.dart';


class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          Cetagories(
            assetsImage: 'assets/shirt.png',
            imageCaption: "T-Shirt",
          ),
          Cetagories(
            assetsImage: 'assets/shirt.png',
            imageCaption: "T-Shirt",
          ),
          Cetagories(
            assetsImage: 'assets/sabbir.jpg',
            imageCaption: "sabbir",
          ),
          Cetagories(
            assetsImage: 'assets/t-shirt.png',
            imageCaption: "Bule",
          ),
          Cetagories(
            assetsImage: 'assets/sabbir.jpg',
            imageCaption: "sabbir",
          ),
          Cetagories(
            assetsImage: 'assets/sabbir.jpg',
            imageCaption: "sabbir",
          ),
          Cetagories(
            assetsImage: 'assets/sabbir.jpg',
            imageCaption: "sabbir",
          ),
        ],
      ),
    );
  }
}


