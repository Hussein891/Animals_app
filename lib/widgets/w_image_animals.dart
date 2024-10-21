import 'package:flutter/material.dart';



class WidgetImageAnimals extends StatelessWidget {
  const WidgetImageAnimals({super.key, required this.img});
  final String img;

  @override
  Widget build(BuildContext context) {
    return  Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                
                borderRadius: BorderRadius.vertical(top:Radius.circular(18))),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(img,fit: BoxFit.fill,)
            ),
          );
          
  }
}