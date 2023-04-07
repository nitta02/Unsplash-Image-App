// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:image_asstes_project/widgets/splash_login.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  Utils isLogin = Utils();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogin.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/intro_img.png'),
                fit: BoxFit.fill)),
      ),
    );
  }
}
