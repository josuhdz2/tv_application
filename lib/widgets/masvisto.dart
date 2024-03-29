import 'package:flutter/material.dart';
import 'package:dpad_container/dpad_container.dart';
class MasVistoList extends StatefulWidget
{
  const MasVistoList({ Key? key }) : super(key: key);
  @override
  State<MasVistoList> createState() => _MasVistoListState();
}
class _MasVistoListState extends State<MasVistoList>
{
  int? selectedIndex;
  int? onFocusIndex;
  List<String> nombresPeliculas=["Acidman", "After The Bite", "Amber The Girl", "American Buffalo", "Angry Black Girl And Her Monster", "Aporia", "Barbie", "Blood", "Blue Beetle", "Bruiser"];
  List<String> urlsPeliculas=["acidman.jpg", "after_the_bite.jpg", "amber_the_girl_behind_the_alert.jpg", "american_buffalo.jpg", "angry_black_girl_and_her_monster.jpg", "aporia.jpg", "barbie_ver2.jpg", "blood.jpg", "blue_beetle_ver4.jpg", "bruiser.jpg"];
  @override
  Widget build(BuildContext context)
  {
    return ListView.builder
    (
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder:(context, index)
      {
        return DpadContainer
        (
          onClick: ()=>setState(()=>selectedIndex=index),
          onFocus: (bool inFocused)=>setState(()=>onFocusIndex=index),
          child: Padding
          (
            padding: const EdgeInsets.symmetric(horizontal:10),
            child: SizedBox
            (
              width: onFocusIndex==index?170:150,
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
                      decoration:BoxDecoration
                      (
                        border: Border.all
                        (
                          color:onFocusIndex==index?Colors.white:Colors.transparent,
                          width: 5
                        ),
                        gradient: const LinearGradient
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
                    bottom: 20,
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