import 'package:flutter/material.dart';
class MasVistoList extends StatefulWidget
{
  const MasVistoList({ Key? key }) : super(key: key);
  @override
  State<MasVistoList> createState() => _MasVistoListState();
}
class _MasVistoListState extends State<MasVistoList>
{
  @override
  Widget build(BuildContext context)
  {
    List<String> nombresPeliculas=["Acidman", "After The Bite", "Amber The Girl", "American Buffalo", "Angry Black Girl And Her Monster", "Aporia", "Barbie", "Blood", "Blue Beetle", "Bruiser"];
    List<String> urlsPeliculas=["acidman.jpg", "after_the_bite.jpg", "amber_the_girl_behind_the_alert.jpg", "american_buffalo.jpg", "angry_black_girl_and_her_monster.jpg", "aporia.jpg", "barbie_ver2.jpg", "blood.jpg", "blue_beetle_ver4.jpg", "bruiser.jpg"];
    return ListView.builder
    (
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder:(context, index)
      {
        final enfoque=FocusNode();
        double resalte=10;
        return Focus
        (
          /*onKeyEvent: (node, event) {
            //return 0;//no se sabe como hacer este cambio
          },*/
          onFocusChange: (hasFocus)
          {
            print("tengo el enfoque $index");
            if(hasFocus)
            {
              print("tengo el enfoque $index");
              setState(() {
                resalte=0;
              });
            }
          },
          focusNode: enfoque,
          child: Padding
          (
            padding: EdgeInsets.symmetric(horizontal: resalte),
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
                  Positioned
                  (
                    bottom: 40,
                    child: Padding
                    (
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
          ),
        );
      },
    );
  }
}