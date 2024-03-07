import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarousalSlider extends StatefulWidget {
  const CarousalSlider({super.key});

  @override
  State<CarousalSlider> createState() => _CarousalSliderState();
}

class _CarousalSliderState extends State<CarousalSlider> with TickerProviderStateMixin {
  
  final List<String> imageList = [
      'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?q=80&w=1898&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1562183241-b937e95585b6?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1603808033192-082d6919d3e1?q=80&w=1915&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1595341888016-a392ef81b7de?q=80&w=1779&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1460353581641-37baddab0fa2?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  ];


  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
          height: 230,
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
            itemCount: imageList.length,
            padEnds: true,
            pageSnapping: true,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            itemBuilder: (context, index){
              return Container(
                child: Image.network(imageList[index], fit: BoxFit.cover,)
              );
            },
          ),
        ),
        const SizedBox(height: 8),
       AnimatedSmoothIndicator(
        activeIndex: currentIndex, 
        count: imageList.length,
        effect: const WormEffect(
          dotHeight: 10,
          dotWidth: 10,
        ),
        ),
       ],
      ),
    );
  }
}