// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_asstes_project/widgets/drawer_menu.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.amber,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Person Name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.8,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Icon(CupertinoIcons.person_alt_circle),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return DrawerMenu();
            },
          ))
        ],
      ),
    );
  }
}
