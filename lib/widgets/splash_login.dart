import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_asstes_project/screens/home_screen.dart';

class Utils {
  void isLogin(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
    });
  }
}
