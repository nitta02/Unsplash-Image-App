// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const MyImageApp());
}

class MyImageApp extends StatelessWidget {
  const MyImageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: Text('Image_Scrolling_App'),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  //.........................NETWORK IMAGES SECTION.........................//
                  Image.network(
                      'https://c4.wallpaperflare.com/wallpaper/134/149/308/movies-marvel-comics-superhero-ms-marvel-wallpaper-preview.jpg'),

                  SizedBox(
                    height: 5,
                  ),
                  Image.network(
                      'https://images.hdqwalls.com/wallpapers/scarlet-witch-wanda-x2.jpg'),
                  SizedBox(
                    height: 5,
                  ),
                  Image.network(
                      'https://www.ubackground.com/_ph/86/426994636.jpg'),
                  SizedBox(
                    height: 5,
                  ),
                  Image.network(
                      'https://www.xtrafondos.com/wallpapers/venom-marvel-comics-10146.jpg'),
                  SizedBox(
                    height: 5,
                  ),
                  Image.network(
                      'https://c4.wallpaperflare.com/wallpaper/230/551/769/tom-hardy-venom-peter-parker-spider-man-wallpaper-preview.jpg'),
                  SizedBox(
                    height: 5,
                  ),
                  Image.network(
                      'https://rare-gallery.com/mocahbig/57455-X-Men-Marvel-ComicsWolverine-4k-Ultra-HD-Wallpaper.jpg'),
                  SizedBox(
                    height: 5,
                  ),

                  //....................ASSETS IMAGES SECTION...................................... //
                  Image(
                    image: AssetImage('assets/ironfist.jpg'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset('assets/doctorstrange.jpg'),
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset('assets/marvelcomics.jpg'),
                ],
              ),
            )),
      ),
    );
  }
}
