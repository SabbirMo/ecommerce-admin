import 'package:flutter/material.dart';

class Cetagories extends StatelessWidget {
  final String assetsImage;
  final String imageCaption;

  const Cetagories({super.key,
    required this.assetsImage,
    required this.imageCaption
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: 80,
        child: ListTile(
          title: CircleAvatar(
            backgroundImage: AssetImage(assetsImage),
            backgroundColor: const Color.fromARGB(255, 55, 49, 49),
          ),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(imageCaption,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black
            ),
            ),
          ),
        ),
      ),
    );
  }
}