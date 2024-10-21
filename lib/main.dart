import 'package:app_animals/constant/animals_name.dart';
import 'package:app_animals/view/v_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: AnimalsName.animals,
      debugShowCheckedModeBanner: false,
      home: ViewHome(),
    );
  }
}
