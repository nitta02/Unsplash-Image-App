// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:image_asstes_project/constants/image_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: List.generate(
          imageLists.length,
          (index) => Image.asset(imageLists[index]),
        ),
      )),
    );
  }
}
