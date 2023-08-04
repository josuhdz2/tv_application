import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tv_app/widgets/masvisto.dart';
void main()
{
  runApp
  (
   const MaterialApp
   (
     home: MyApp(),
     debugShowCheckedModeBanner: false,
   )
  );
}
class MyApp extends StatelessWidget
{
  const MyApp({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    List<String> nombresPeliculas=["Chantilly Bridge", "Chop And Steele", "Cocaine Bear", "Deepest Breath", "Haunting In Venice", "Inside Man", "Left Behind Rise Of The Antichrist", "Legend Of The White Dragon", "Meg Two The Trench", "Night Of The Caregiver", "Satanic Hispanics", "Saw X", "Slotherhouse", "Sound Of The Police", "Two Eyes"];
    List<String> carrucel=["Asteroid City", "Bama Rush", "Barbie", "Blue Beetle", "Dungeons And Dragons"];
    List<String> urlsPeliculas=["chantilly_bridge.jpg", "chop_and_steele.jpg", "cocaine_bear.jpg", "deepest_breath.jpg", "haunting_in_venice_ver3.jpg", "inside_man.jpg", "left_behind_rise_of_the_antichrist.jpg", "legend_of_the_white_dragon.jpg", "meg_two_the_trench_ver21.jpg", "night_of_the_caregiver_ver2.jpg", "satanic_hispanics.jpg", "saw_x.jpg", "slotherhouse_ver2.jpg", "sound_of_the_police.jpg", "two_eyes.jpg"];
    List<String> urlCarrucel=["carusel/asteroid_city_ver9.jpg", "carusel/bama_rush_ver2.jpg", "carusel/barbie_ver31.jpg", "carusel/blue_beetle_ver7.jpg", "carusel/dungeons_and_dragons_honor_among_thieves_ver23.jpg"];
    
    return Scaffold
    (
      backgroundColor: Colors.black,
      appBar: AppBar
      (
        title: Row
        (
          children:
          const [
            Text
            (
              "Movie",
              style: TextStyle
              (
                color: Colors.white,
              ),
            ),
            Text
            (
              "Space",
              style: TextStyle
              (
                color: Colors.red,
              ),
            )
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView
      (
        children:
        [
          Padding
          (
            padding: const EdgeInsets.all(30.0),
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Stack
                (
                  children:
                  [
                    CarouselSlider
                    (
                      items: urlCarrucel.map((item)=>Image.asset
                        (
                          "assets/$item",
                          fit: BoxFit.cover,
                        ),
                      ).toList(),
                      options: CarouselOptions
                      (
                        height: 260,
                        viewportFraction: 1,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 5),
                      )
                    ),
                    SizedBox//esto es el gradiente superior
                    (
                      height: 100,
                      child: Container
                      (
                        decoration: const BoxDecoration
                        (
                          gradient: LinearGradient
                          (
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors:
                            [
                              Colors.black,
                              Colors.transparent
                            ]
                          )
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text
                      (
                        "Peliculas",
                        style: TextStyle
                        (
                          fontSize: 40,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text
                  (
                    "Lo mas visto",
                    style: TextStyle
                    (
                      color: Colors.white,
                      fontSize: 20
                    ),
                  ),
                ),
                //es aqui donde se ingresa la lista
                Container
                (
                  height: 260,
                  child: const MasVistoList()
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text
                  (
                    "Mas reciente",
                    style: TextStyle
                    (
                      color: Colors.white,
                      fontSize: 20
                    ),
                  ),
                ),
                //es aqui donde se ingresa la lista
                Container
                (
                  height: 260,
                  child: ListView.builder
                  (
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(context, index)
                    {
                      return Padding
                      (
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SizedBox
                        (
                          width: 150,
                          child: Stack
                          (
                            children:
                            [
                              Image.asset('assets/${urlsPeliculas[index]}'),
                              SizedBox
                              (
                                height: 260,
                                child: Container
                                (
                                  decoration: const BoxDecoration
                                  (
                                    gradient: LinearGradient
                                    (
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors:
                                      [
                                        Colors.black,
                                        Colors.transparent
                                      ],
                                      stops: [0.1, 0.6]
                                    )
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 40,
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text
                                  (
                                    nombresPeliculas[index],
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle
                                    (
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ),
                      );
                    }
                  ),
                )
              ],
            ),
          ),
        ]
      ),
    );
  }
}