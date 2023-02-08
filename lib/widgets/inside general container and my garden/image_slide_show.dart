import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter/material.dart';

class ImageSlideShow extends StatefulWidget {
  const ImageSlideShow({super.key});

  @override
  State<ImageSlideShow> createState() => _ImageSlideShowState();
}

class _ImageSlideShowState extends State<ImageSlideShow> {
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      width: double.infinity,
      height: 3000,
      initialPage: 0,
      indicatorColor: Colors.white,
      indicatorBackgroundColor: Colors.black,
      autoPlayInterval: 2000,
      isLoop: true,
      children: [
        Image.network(
          'https://s-trojmiasto.pl/zdj/c/n/1/3138/313x208/3138473__kr.jpg',
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://s-trojmiasto.pl/zdj/c/n/1/3138/313x208/3138473__kr.jpg',
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://s-trojmiasto.pl/zdj/c/n/1/3138/313x208/3138473__kr.jpg',
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
