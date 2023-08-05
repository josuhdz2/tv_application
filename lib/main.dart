import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tv_app/widgets/carousel.dart';
import 'package:tv_app/widgets/masreciente.dart';
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
                    const MyCarousel(),
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
                  child:const MasRecienteList()//aqui va lo mas reciente
                )
              ],
            ),
          ),
        ]
      ),
    );
  }
}