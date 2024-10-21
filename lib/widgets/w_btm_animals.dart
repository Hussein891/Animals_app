



// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class WidgetBtmAnimals extends StatelessWidget {
  const WidgetBtmAnimals({super.key, required this.name,this.color=Colors.indigo, required this.icon,  this.onPressed});
  final String name;
  final String icon;
  final Color color;
  final  Function()? onPressed;
 
  @override
@override
Widget build(BuildContext context) {
  print('Icon Name: $icon');
  return ElevatedButton.icon(
    onPressed: onPressed,
    
    
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      foregroundColor: Colors.white,
    ),
    icon: Image.asset(icon, width: 30),
    label: Text(name),
  );
}
}
