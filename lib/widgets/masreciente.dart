import 'package:dpad_container/dpad_container.dart';
import 'package:flutter/material.dart';
class MasRecienteList extends StatefulWidget
{
  const MasRecienteList({ Key? key }) : super(key: key);
  @override
  State<MasRecienteList> createState() => _MasRecienteListState();
}
class _MasRecienteListState extends State<MasRecienteList>
{
  int? selectedIndex;
  int? onFocusIndex;
  List<String> nombresPeliculas=["Chantilly Bridge", "Chop And Steele", "Cocaine Bear", "Deepest Breath", "Haunting In Venice", "Inside Man", "Left Behind Rise Of The Antichrist", "Legend Of The White Dragon", "Meg Two The Trench", "Night Of The Caregiver", "Satanic Hispanics", "Saw X", "Slotherhouse", "Sound Of The Police", "Two Eyes"];
  List<String> urlsPeliculas=["chantilly_bridge.jpg", "chop_and_steele.jpg", "cocaine_bear.jpg", "deepest_breath.jpg", "haunting_in_venice_ver3.jpg", "inside_man.jpg", "left_behind_rise_of_the_antichrist.jpg", "legend_of_the_white_dragon.jpg", "meg_two_the_trench_ver21.jpg", "night_of_the_caregiver_ver2.jpg", "satanic_hispanics.jpg", "saw_x.jpg", "slotherhouse_ver2.jpg", "sound_of_the_police.jpg", "two_eyes.jpg"];  
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