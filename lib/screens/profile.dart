// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            letterSpacing: 1.7,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [const Text("Profile")],
      ),
    );
  }
}
