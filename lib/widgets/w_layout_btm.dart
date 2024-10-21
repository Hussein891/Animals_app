




// ignore_for_file: avoid_print

import 'package:app_animals/constant/animals_audio.dart';
import 'package:app_animals/constant/animals_icons.dart';
import 'package:app_animals/constant/animals_image.dart';
import 'package:app_animals/constant/animals_name.dart';
import 'package:app_animals/widgets/w_btm_animals.dart';
import 'package:flutter/material.dart';



class WidgetLayoutBtmAnimals extends StatelessWidget {
const WidgetLayoutBtmAnimals({Key? key, required this.callBack}) : super(key: key);
final void Function(String image,String audio) callBack;
  @override
  Widget build(BuildContext context) {
  print('AnimalsName: ${AnimalsName.lion}');
  print('AnimalsIcon: ${AnimalsIcon.lion}');
    return Expanded(
            child: Container(
              decoration: const BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(18),),),
              clipBehavior: Clip.antiAlias,
              child:  Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  WidgetBtmAnimals(name: AnimalsName.lion, icon: AnimalsIcon.lion,color: Colors.orange,onPressed: (){
                    callBack(AnimalImage.lion,AnimalsAudio.lion);
                  },),
                  WidgetBtmAnimals(name: AnimalsName.cheetah, icon: AnimalsIcon.cheetah,onPressed: (){
                    callBack(AnimalImage.cheetah,AnimalsAudio.cheetah);
                  }),
                  WidgetBtmAnimals(name: AnimalsName.wolf, icon: AnimalsIcon.wolf,color: Colors.orange ,onPressed: (){
                    callBack(AnimalImage.wolf,AnimalsAudio.wolf);
                  })
                ],),
                const SizedBox(height: 10,),
                
                //rwo one\
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    WidgetBtmAnimals(
                      name: AnimalsName.cat,
                     icon: AnimalsIcon.cat,
                     onPressed: (){
                      callBack(AnimalImage.cat,AnimalsAudio.cat);}),
                    WidgetBtmAnimals(
                      color: Colors.orange,
                      name: AnimalsName.elephant,
                     icon: AnimalsIcon.elephant,
                     onPressed: (){
                      callBack(AnimalImage.elephant,AnimalsAudio.elephant);}),
                    WidgetBtmAnimals(name: AnimalsName.giraffe,
                     icon: AnimalsIcon.giraffe,
                     onPressed: (){
                      callBack(AnimalImage.lion,AnimalsAudio.giraffe);})
                  ],),
                ),
                // Row three
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  WidgetBtmAnimals(
                    color: Colors.orange,
                    name: AnimalsName.crocodile,
                   icon: AnimalsIcon.crocodile,
                   onPressed: (){
                    callBack(AnimalImage.crocodile,AnimalsAudio.crocodile);}),
                  WidgetBtmAnimals(name: AnimalsName.parrot,
                   icon: AnimalsIcon.parrot,
                   onPressed: (){
                    callBack(AnimalImage.parrot,AnimalsAudio.parrot);}),
                  WidgetBtmAnimals(
                     color: Colors.orange,
                    name: AnimalsName.dog,
                   icon: AnimalsIcon.dog,
                   onPressed: (){
                    callBack(AnimalImage.dog,AnimalsAudio.dog);})
                ],),

              ])));
  }
} 





//  Expanded(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                     WidgetBtmAnimals(
//                     name: AnimalsName.lion,
//                     icon: AnimalsIcon.lion,
                  
//                     ),
//                     WidgetBtmAnimals(
//                     name: AnimalsName.cheetah,
//                     color: Colors.orange,
//                     icon: AnimalsIcon.cheetah,),
//                     WidgetBtmAnimals(
//                     name: AnimalsName.wolf,
//                     icon: AnimalsIcon.wolf, ),
//                   ],),
//                 ),
//                 //rwo tow
//                 Expanded(child: Row(children: [
//                   WidgetBtmAnimals(
//                     name: AnimalsName.lion,
//                     icon: AnimalsIcon.lion,
                  
//                     ),
//                     WidgetBtmAnimals(
//                     name: AnimalsName.cheetah,
//                     color: Colors.orange,
//                     icon: AnimalsIcon.cheetah,),
//                     WidgetBtmAnimals(
//                     name: AnimalsName.wolf,
//                     icon: AnimalsIcon.wolf, ),
//                 ],)),
//                 //rwo three
//                 Expanded(child: Row(children: [WidgetBtmAnimals(
//                     name: AnimalsName.lion,
//                     icon: AnimalsIcon.lion,
                  
//                     ),
//                     WidgetBtmAnimals(
//                     name: AnimalsName.cheetah,
//                     color: Colors.orange,
//                     icon: AnimalsIcon.cheetah,),
//                     WidgetBtmAnimals(
//                     name: AnimalsName.wolf,
//                     icon: AnimalsIcon.wolf, ),],)),
//               ],)
//             ),
//           ) ;