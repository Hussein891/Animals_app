// ignore_for_file: avoid_unnecessary_containers, avoid_print

//import 'package:app_animals/constant/animals_icons.dart';
import 'package:app_animals/constant/animals_image.dart';
import 'package:app_animals/constant/animals_name.dart';
import 'package:app_animals/widgets/w_image_animals.dart';
import 'package:app_animals/widgets/w_layout_btm.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewHome extends StatefulWidget {
  const ViewHome({super.key});

  @override
  State<ViewHome> createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
  ///[image] def  image animals
String image = AnimalImage.animals;
//
AudioPlayer audioPlayer =AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AnimalsName.animals,
          style: GoogleFonts.pacifico(),
        ),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions:  [
          Padding(
            padding: const EdgeInsets.all(9),
            child: InkWell(
              onTap: () {
                image =AnimalImage.animals;
                setState(() {
                  
                });
              },
              child: const Image(
                image: AssetImage(AnimalImage.pawprint),
              ),
            ),
          )
        ],
      ),
      body:  Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20)),
          clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.all(8.0),
        child:    Column(children: [
          // Image Animals
          WidgetImageAnimals(img: image,),
         //  line
          const Divider(height: 0,),
          // Bottom Animals
            WidgetLayoutBtmAnimals(callBack: (String image,String audio) {
             print('ok callBack:$image');
             this.image = image;
             audioPlayer.setSourceAsset(audio);
             audioPlayer.resume();
           setState(() {
             
           });
           },)
        ],),
      )
    );
  }
}
