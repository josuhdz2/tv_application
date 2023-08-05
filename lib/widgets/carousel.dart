import 'package:carousel_slider/carousel_slider.dart';
import 'package:dpad_container/dpad_container.dart';
import 'package:flutter/material.dart';
class MyCarousel extends StatefulWidget
{
  const MyCarousel({ Key? key }) : super(key: key);
  @override
  State<MyCarousel> createState() => _MyCarouselState();
}
class _MyCarouselState extends State<MyCarousel>
{
  List<String> carrucel=["Asteroid City", "Bama Rush", "Barbie", "Blue Beetle", "Dungeons And Dragons"];
  List<String> urlCarrucel=["carusel/asteroid_city_ver9.jpg", "carusel/bama_rush_ver2.jpg", "carusel/barbie_ver31.jpg", "carusel/blue_beetle_ver7.jpg", "carusel/dungeons_and_dragons_honor_among_thieves_ver23.jpg"];
  @override
  Widget build(BuildContext context)
  {
    return CarouselSlider
    (
      items: urlCarrucel.map((item)
      {
        return Image.asset
        (
          "assets/$item",
          fit: BoxFit.cover,
        );
      }).toList(),
      options: CarouselOptions
      (
        height: 260,
        viewportFraction: 1,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
      )
    );
  }
}