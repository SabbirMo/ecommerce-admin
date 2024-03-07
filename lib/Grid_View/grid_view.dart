import 'package:flutter/material.dart';

class HomeGridView extends StatelessWidget {
  final String image;
  final String image1;

   HomeGridView({
    super.key,
    required this.image,
    required this. image1
    });

  final List<String> imagesList = [
      'https://images.unsplash.com/photo-1460353581641-37baddab0fa2?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1603808033192-082d6919d3e1?q=80&w=1915&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 180,
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 25,
          physics: const BouncingScrollPhysics(),
          clipBehavior: Clip.antiAlias,
          children: [
              Image.network(image, fit: BoxFit.cover,),
              Image.network(image1, fit: BoxFit.cover,),
          ],
        ),
      ),
    );
  }
}